#!/usr/bin/tclsh

#正则表达式
regexp {([A-Z,a-z]*)} "Tcl Tutorial" a b 
puts "Full Match: $a"
puts "Sub Match1: $b"

#多模式
regexp {([A-Z,a-z]*).([A-Z,a-z]*)} "Tcl Tutorial" a b c  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "Sub Match2: $c"


#一个子模式可以包含多个模式
regexp {([A-Z,a-z]*.([A-Z,a-z]*))} "Tcl Tutorial" a b c  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "Sub Match2: $c"

#[A-Z,a-z]可以使用-nocase代替
regexp -nocase {([A-Z]*.([A-Z]*))} "Tcl Tutorial" a b c  
puts "Full Match: $a"
puts "Sub Match1: $b"
puts "Sub Match2: $c"

regexp -nocase -line -- {([A-Z]*.([A-Z]*))} "Tcl \nTutorial" a b 
puts "Full Match: $a"
puts "Sub Match1: $b"
regexp -nocase -start 4 -line -- {([A-Z]*.([A-Z]*))} "Tcl \nTutorial" a b  
puts "Full Match: $a"
puts "Sub Match1: $b"
