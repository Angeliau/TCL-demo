#!/usr/bin/tclsh

#创建列表
set colorList1 {red green blue}
set colorList2 [list red green blue]
set colorList3 [split "red_green_blue" _]
puts $colorList1
puts $colorList2
puts $colorList3

#append
set var orange
#append var " " "blue"
#append var "blue"
#puts $var
lappend var "blue"
lappend var "red" 
lappend var "green" 
puts $var



#list length
set var {orange blue red green}
puts [llength $var]

#index
set var {orange blue red green}
puts [lindex $var  1]
puts [lindex $var  3]
puts [lindex $var  4] ;# no this element

#list insert
set var {orange blue red green}
puts "before insert : $var"
set var [linsert  $var 3 black white]
puts "after insert : $var"

#replace
set var {orange blue red green}
puts "before replace : $var"
set var [lreplace $var 2 3 black white]
puts "after replace : $var"

#设置索引处的元素
set var {orange blue red green}
puts "origin list : $var"
lset var 0 black ;# orange will be set to black
puts "current list : $var"

#lassign
set var {orange blue red green}
lassign $var colour1 colour2 c3 c4 c5 ;#colour1=var[0] colour2=var[1]
puts $colour1
puts $colour2
puts $c3
puts $c4
puts $c5 ;# c5 is empty

#排序
set var {orange blue red green}
set var [lsort $var]
puts $var


set num {50 35 23 3 47 20 1 5}
puts "before sort : $num"
set num [lsort $num]
puts "after sort : $num"


