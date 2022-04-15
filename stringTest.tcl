#!/usr/bin/tclsh
#string常用方法测试


#单个单词不用加双引号
set myVariable hello
puts $myVariable

#多个单词要使用双引号或大括号
set myVariable "hello world"
puts $myVariable
set myVariable {hello world}
puts $myVariable

#转义字符
puts "Hello\tWorld\n\n"

#字符串比较
set s1 "Hello"
set s2 aaa
set s3 aaa
puts [string compare $s1 $s2]
puts "$s2 compare $s3 : [string compare $s2 $s3]"
puts "$s2 equal $s3 : [string equal $s2 $s3]" 
if {[string compare $s2 $s3] == 0} {
	puts "String \'s1\' and \'s2\' are same."
} 

if {[string compare $s1 $s2] == -1} {
	puts "String \'s1\' comes before \'s2\'."
}

if {[string compare $s2 $s1] == 1} {
	puts "String \'s2\' comes before \'s1\'."
}

#-nocase
set str1 ABc
set str2 abc
puts "$str1 compare $str2 : [string compare $str1 $str2]"
puts "$str1 compare -nocase $str2 : [string compare -nocase $str1 $str2]"

#-length
set str1 abcf
set str2 abcd
puts "$str1 compare -length 2 $str2 : [string compare -length 2 $str1 $str2]"
puts "$str1 equal -length 2 $str2 : [string equal -length 2 $str1 $str2]"

# relational operator(> < =)
set str1 AAA
set str2 AAA
#puts [$str1 > $str2]
#puts [$str1 < $str2]
#puts $str1 == $str2


#字符串索引
set s1 "Hello World"
set s2 "o"
puts "First occurrence of $s2 in s1"
puts [string first $s2 $s1]
puts "Character at index 0 in s1"
puts [string index $s1 0]
puts "Last occurrence of $s2 in s1"
puts [string last $s2 $s1]
puts "Word end index in s1"
puts [string wordend $s1 20]
puts "Word start index in s1"
puts [string wordstart $s1 20]

#字符串长度
set s1 "12345"
puts "Length of $s1 : [string length $s1]"

#字符串大小写
puts "-----------Uppercase and Lowercase of string------------"
set s1 "Hello World"
puts "Uppercase string of s1"
puts [string toupper $s1]
puts "Lowercase string of s1"
puts [string tolower $s1]

#删除字符
puts "-----------string trim-----------"
set s1 "Hello World"
set s2 "World"
puts "Trim right $s2 in $s1"
puts [string trimright $s1 $s2]

set s2 "Hello"
puts "Trim left $s2 in $s1"
puts [string trimleft $s1 $s2]

set s1 " Hello World "
set s2 " "
puts "Trim characters s1 on both sides of s2"
puts [string trim $s1 $s2]

#匹配字符串
puts "-----------string match-----------"
set s1 "test@test.com" 
set s2 "*@*.com"
puts "Matching pattern s2 in s1"
puts [string match "*@*.com" $s1 ]
puts "Matching pattern tcl in s1"
puts [string match {tcl} $s1]

#append
puts "-----------string append-----------"
set s1 "Hello" 
append s1 " World"
puts $s1

#format
puts "-----------string format-----------"
puts [format "%f" 43.5]
puts [format "%e" 43.5]
puts [format "%d %s" 4 tuts]
puts [format "%s" "Tcl Language"]
puts [format "%x" 40]


#scan
puts "-----------scan-----------"
puts [scan "90" {%[0-9]}]  ;# 90
puts [scan "90abc" {%[0-9]}] ;# 90
puts [scan "9a0abc" {%[0-9]}] ;# 9
puts [scan "90" {%[0-9]}  m] ;# 1
puts [scan "abc" {%[a-z]} m]
puts [scan "abc" {%[A-Z]} m]
puts [scan "ABC" {%[A-Z]} m]

