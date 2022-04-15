#!/usr/bin/tclsh


set a 10
set b [expr $a == 1 ? 20 : 30]
puts "Value of b is $b"

set b [expr $a == 10 ? 20 : 30]
puts "Value of b is $b"


#if 语句
#check the boolean condition using if statement
if { $a < 20 } {
# if condition is true then print the following 
	puts "a is less than 20" 
}
puts "value of a is : $a"

# if else
set a 100

#check the boolean condition 
if {$a < 20 } {
   #if condition is true then print the following 
   puts "a is less than 20"
} else {
   #if condition is false then print the following 
   puts "a is not less than 20"
}
puts "value of a is : $a"


#if ... else if ... else
#check the boolean condition
if { $a == 10 } {
   # if condition is true then print the following 
   puts "Value of a is 10"
} elseif { $a == 20 } {
   # if else if condition is true 
   puts "Value of a is 20"
} elseif { $a == 30 } {
   # if else if condition is true 
   puts "Value of a is 30"
} else {
   # if none of the conditions is true 
   puts "None of the values is matching"
}

puts "Exact value of a is: $a"

#嵌套if
set a 300
set b 200
 
# check the boolean condition 
if { $a == 300 } {
   # if condition is true then check the following 
   if { $b == 200 } {
      #if condition is true then print the following 
      puts "Value of a is 100 and b is 200"
   }
}
puts "Exact value of a is : $a"
puts "Exact value of b is : $b"


