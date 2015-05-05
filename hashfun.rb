my_hash = {"paula@techtalentsouth.com" => "paula", "joe@joeemail.com" => "joe", "jane@mailme.com" => "jane"} 
puts my_hash

my_hash["martha@me.com"] = "martha"
puts my_hash

my_hash.delete("joe")
puts my_hash


json_hash = {key1: "value1", key2: "value2"}
puts json_hash[:key1]