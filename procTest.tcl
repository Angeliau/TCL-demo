#!/usr/bin/tclsh
proc helloWorld {} {
   puts "Hello, World!"
}

#helloWorld

#过程的多个参数
proc add {a b} {
    return [expr $a+$b]
}
puts [add 10 30]


#可变参数
proc avg {numbers} {
    set sum 0
    foreach number $numbers {
      set sum  [expr $sum + $number]
	}
    set average [expr $sum/[llength $numbers]]
    return $average
}
puts [avg {70 80 50 60}]
puts [avg {70 80 50 }]

#默认参数
proc add {a {b 100} } {
   return [expr $a+$b]
}
puts [add 10 30]
puts [add 10]


#递归过程
proc factorial {number} {
   if {$number <= 1} {
      return 1
   } 
   return [expr $number * [factorial [expr $number - 1]]]

}
puts [factorial 3]
puts [factorial 5]

