#!/usr/bin/tclsh

#TCL字典

#创建字典
dict set colours  colour1 red 
puts $colours
dict set colours  colour2 green
puts $colours

set colours [dict create colour1 "black" colour2 "white"]
puts $colours

#dict size
set colours [dict create colour1 "black" colour2 "white"]
puts [dict size $colours]

#遍历字典
set colours [dict create colour1 "black" colour2 "white" colour3 "red"]
foreach key [dict keys $colours] {
    set value [dict get $colours $key]
    puts "$key - $value"
}

#get value by key
set colours [dict create colour1 "black" colour2 "white"]
set value [dict get $colours colour1]
puts $value

#get all keys
set colours [dict create colour1 "black" colour2 "white"]
set keys [dict keys $colours]
puts $keys

#get all values
set colours [dict create a "black" b "white" c "123" d "456"]
set values [dict values $colours]
puts $values

#is key exists in dict?
set colours [dict create colour1 "black" colour2 "white"]
set result [dict exists $colours colour1]
puts $result
set result [dict exists $colours colour5]
puts $result

