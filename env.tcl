#!/usr/bin/tclsh

if 0 {
多行注释
my first program in tcl
It's  simple
}

#单行注释
puts stdout "Hello World"

puts "Hello\nWorld"

puts $env(PATH)  ;#output enviroment 行内注释


puts $tcl_precision

puts [expr 3+2+3]

set a 10
puts $a
puts [expr $a + 5]

set str hello
puts $str

set words "hello world"
puts $words

set words1 {hello world}
puts $words1

set mylist {red green blue}
puts [lindex $mylist 0]
puts [lindex $mylist 1]
puts [lindex $mylist 2]

#关联数组
set marks(a) 80
puts $marks(a)
set marks(b) 90.5
puts $marks(b)
set arr(c) 100
puts $arr(c)


#变量命名
set A 10
set {variable B} test ;#不建议这样写
puts $A
puts ${variable B}

#动态类型
set variableA "10" 
puts $variableA 
set sum [expr $variableA +20]
puts $sum

#数学表达式
set variableA "10"
set tcl_precision 5
set result [expr $variableA / 9];
puts $result
set result [expr $variableA / 9.0];
puts $result
set variableA "10.0"
set result [expr $variableA / 9];
puts $result

#三元运算符
set a 10
set b [expr $a==1 ? 20 : 30]
puts "Value of b is $b"
set b [expr $a==10 ? 20 : 30]
puts "Value of b is $b"

