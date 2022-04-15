#!/usr/bin/tclsh

#1.不加大括号
set grade C;

switch $grade  A { puts "Well done!" }  B { puts "Excellent!" }  C { puts "You passed!"  } F { puts "Better try again"   }   default {     puts "Invalid grade"   }
puts "Your grade is  $grade"


#2.有大括号

set grade B;

switch $grade {
  case:A {
     puts "Well done!"
   }
   B {
     puts "Excellent!"
   }

   case:C 
     puts "You passed!"
     break
   
   F {
     puts "Better try again"
   }
   default {
     puts "Invalid grade"
   }
}
puts "Your grade is  $grade"


#嵌套switch语句
set a 100
set b 200

switch $a {
   100 {
     puts "This is part of outer switch"
     switch $b {
        200 {
           puts "This is part of inner switch!"
        }
	 }
   }   
}
puts "Exact value of a is : $a"
puts "Exact value of a is : $b"

