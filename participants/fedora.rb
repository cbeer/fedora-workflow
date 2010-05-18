
$engine.register_participant :name => :fedora_set_object_state do |workitem|

end

$engine.register_participant :name => :fedora_add_datastream do |workitem|

end

$engine.register_participant :name => :fedora_purge_datastream do |workitem|

end

$engine.register_participant :name => :fedora_datastream_info do |workitem|

end

# get the datastream as a tmp file
$engine.register_participant :name => :fedora_get_datastream do |workitem|

end

# read-only access to a file-handle
$engine.register_participant :name => :fedora_datastream_to_file do |workitem|

end

$engine.register_participant :name => :fedora_sparql do |workitem|

end

$engine.register_participant :name => :fedora_add_relationship do |workitem|

end

$engine.register_participant :name => :fedora_purge_relationship do |workitem|

end
