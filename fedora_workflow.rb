#--
# Copyright (c) 2009, Chris Beer, chris@authoritativeopinion.com
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

$:.unshift('lib')

require 'rubygems'
require 'uri'
require 'open-uri'
require 'cgi'
require 'net/http'
require 'rexml/document'
require 'rest_client'
require 'stomp' 
require 'ruote/engine'
require 'ruote/participants'
require 'tempfile'
require 'set'
require 'http_require'


gem 'soap4r'
require 'fedora/FedoraAPIMDriver'
require 'FedoraMessage'

fedora_base_url = 'http://localhost:8080/fedora'

fedora_apim_endpoint = 'http://localhost:8080/fedora/services/management'
fedora_apim_user = 'fedoraAdmin'
fedora_apim_password = 'fedora'

activemq_endpoint = 'stomp://localhost:61613'
activemq_topic = '/topic/fedora.apim.update'

$driver = FedoraAPIM.new
$driver.options["protocol.http.basic_auth"] << [fedora_apim_endpoint, fedora_apim_user, fedora_apim_password]

#Workflow engine
$engine =  Ruote::FsPersistedEngine.new(:definition_in_launchitem_allowed => true)

# Basic Processes
Dir.glob(File.join(File.dirname(__FILE__), 'processes/*.rb')).each {|f| require f }

# Participants
Dir.glob(File.join(File.dirname(__FILE__), 'participants/*.rb')).each {|f| require f }


# -- Remote Participants
query = 'select $a from <#ri> where
$b <info:fedora/fedora-system:def/relations-external#hasWorkflow> $a and
$a <info:fedora/fedora-system:def/model#state> <info:fedora/fedora-system:def/model#Active>'

relsext = RestClient.post "http://localhost:8080/fedora/risearch", :dt => 'on', :format => 'CSV', :lang => 'itql', :limit => 100, :query => query, :type => 'tuples'
relsext.split(/\n/).shift
relsext.each { |pid|
	require fedora_base_url + '/get/' + pid  + "/Participants"
}

#Message queue
client = Stomp::Client.open activemq_endpoint

client.subscribe(activemq_topic) do |msg|
  begin
    m = FedoraMessage.new msg
    m.handle_msg
  rescue Exception => e
    #log
    puts e
   # puts e.backtrace
  end
end

client.join
