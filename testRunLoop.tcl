#!/usr/bin/tclsh

if 0 {
	while {1} {
		puts "This loop will run forever."
	}
}

#while loop
set a 10

#while loop execution 
#while { $a < 20 } {
#	puts "value of a: $a"
#		incr a
#}

# for loop execution
#for { set a 10}  {$a < 20} {incr a} {
#   puts "value of a: $a"
#}

#查找2-100所有的素数
set j 0;
for {set i 2} {$i<100} {incr i} {
   for {set j 2} {$j <= [expr $i/$j] } {incr j} {
      if {  [expr $i%$j] == 0 } {
         break
      } 
   }
   if {$j >[expr $i/$j] } {
      puts "$i 是素数"
   }
}


# break while loop execution 
while {$a < 20 } {
   puts "value of a: $a"
   incr a
   if { $a > 15} {
      # terminate the loop using break statement 
          break
   }
}



set a 10
# do loop execution 
while { $a < 20 } {
   if { $a == 15} {
     #skip the iteration 
	 incr a
     continue
   }
   puts "value of a: $a"
   incr a     
}

