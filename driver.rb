$:.unshift('lib')

require 'rubygems'
require 'open-uri'
require 'cgi'
require 'nokogiri'
require 'stomp'
require 'rest_client'
require 'ruote'
require 'ruote/storage/fs_storage'
require 'fedora'

activemq_endpoint = 'stomp://localhost:61613'
activemq_topic = '/topic/fedora.apim.update'

$engine = Ruote::Engine.new(Ruote::Worker.new(Ruote::FsStorage.new('work')))

Dir.glob('participants/*.rb').each { |x| require x }

$engine.register_participant :setup_fedora_object do |workitem|
  workitem.fields['pid'] = 'wgbh:ASSET'
end

$engine.register_participant :log do |workitem|
  puts workitem.inspect
end


#Message queue
client = Stomp::Client.open activemq_endpoint

client.subscribe(activemq_topic) do |msg|
  begin
    puts msg.to_s
    doc = Nokogiri::XML(msg.body)
    action = doc.xpath('//atom:title', 'atom' => 'http://www.w3.org/2005/Atom').first.text
    pid = doc.xpath('//atom:summary', 'atom' => 'http://www.w3.org/2005/Atom').first.text
    t = doc.xpath('//atom:category[@scheme="fedora-types:dsID"]/@term', 'atom' => 'http://www.w3.org/2005/Atom').first
    dsid = t.to_s unless dsid.nil?
    dsid ||= ''
    workflows = FedoraWorkflow.fedora_get pid + '/sdef:WORKFLOW/LaunchItem?action=' + action + '&
amp;dsid=' + CGI::escape(dsid)
    doc = Nokogiri::XML(workflows)
    doc.xpath('//process-definition').each do |wkfw|
      $engine.launch wkfw.to_s, { :msg => msg, :pid => pid, :action => action, :dsid => dsid }.merge(Hash[*doc.xpath('//atom:category', 'atom' => 'http://www.w3.org/2005/Atom').map { |c| [c.xpath('@scheme').to_s, c.xpath('@term').to_s ] }.flatten] )
    end
  rescue Exception => e
    #log
    puts e
    puts e.backtrace
  end
end

client.join

