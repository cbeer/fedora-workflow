Ruote.process_definition :name => 'AddDatastreamFromFile' do
  _timeout :after => "1d" do
    participant :ref => 'fedora_datastream_add_file'
  end
end
