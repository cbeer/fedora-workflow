class AddDatastreamFromFile < Ruote::ProcessDefinition
  _timeout :after => "1d" do
    participant :ref => 'fedora_datastream_add_file'
  end
end
