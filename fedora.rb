RAILS_ENV='production'
require 'yaml'

gem 'soap4r'
require 'fedora/Fedora-API-M-WSDLDriver'
module FedoraWorkflow

end

module Fedora_FedoraWorkflowPatch
def self.included(base)
base.extend(ClassMethods)
  end

  module ClassMethods
    meta = class << FedoraWorkflow; self; end
    meta.send :attr_accessor, :fedora_config, :fedora
    fedora_config = YAML::load(File.open(File.join(File.dirname(__FILE__),"config/fedora.yml")))
    FedoraWorkflow.fedora_config ||= {}
    FedoraWorkflow.fedora_config[:url] = fedora_config['url']
    FedoraWorkflow.fedora_config[:user] = fedora_config['user']
    FedoraWorkflow.fedora_config[:password] = fedora_config['password']

    def fedora_soap credentials = {}
      FedoraWorkflow.fedora =  FedoraAPIM.new(FedoraWorkflow.fedora_config[:url] + "/services/management")
      FedoraWorkflow.fedora.options['protocol.http.basic_auth'] << [FedoraWorkflow.fedora_config[:url], (credentials[:user] ||  FedoraWorkflow.fedora_config[:user]), (credentials[:password] || FedoraWorkflow.fedora_config[:password])]
     FedoraWorkflow.fedora
    end
    def sparql query
      rels_ext = RestClient.post FedoraWorkflow.fedora_config[:url] + "/risearch", :dt => 'on', :format => 'Sparql', :lang => 'sparql', :limit => 100, :query => query, :type => 'tuples'
      Nokogiri::XML(rels_ext.body)
    end
    def fedora_get path
      client = RestClient::Resource.new FedoraWorkflow.fedora_config[:url] + "/get/" + path
      client.get
    end
    def fedora_resource path, credentials = {}
      RestClient::Resource.new FedoraWorkflow.fedora_config[:url] + "/objects/" + path, :user => ( credentials[:user] || FedoraWorkflow.fedora_config[:user]), :password => (credentials[:password] || FedoraWorkflow.fedora_config[:password])
    end
  end
end


FedoraWorkflow.send(:include, Fedora_FedoraWorkflowPatch)

