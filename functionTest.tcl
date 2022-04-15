#!/usr/bin/tclsh

#使用TCL内置数学函数
namespace import ::tcl::mathfunc::*
puts [tan 10]
puts [pow 10 2]
puts [ceil 10.34]
puts [hypot 10 20]
puts [srand 45]
puts [log 10]
puts [srand 45]

#系统函数
puts "------------system functions--------------------"
#get seconds
set currentTime [clock seconds]
puts $currentTime
#get format 
puts "The time is: [clock format $currentTime -format %H:%M:%S]"
puts "The date is: [clock format $currentTime -format %D]"

set date "Jun 15, 2014"
puts [clock scan $date -format {%b %d, %Y}]

puts [exec ls]
puts [exec dir]

set a  [open input.txt]
puts [read $a];
puts $a
close $a
