#!/usr/bin/tclsh

#数组赋值
set languages(0) Tcl
set languages(1) "C Language"
puts $languages(0)
puts $languages(1)

#计算数组大小
puts  [array size languages]

#数组遍历
for { set index 0 }  { $index < [array size languages] }  { incr index } {
      puts "languages($index) : $languages($index)"
}

#关联数组
set personA(Name) "Dave"
set personA(Age) 14
puts  $personA(Name)
puts  $personA(Age)
#数组索引
puts [array names personA]


#关联数组遍历
foreach index [array names personA] {
   puts "personA($index): $personA($index)"
}
