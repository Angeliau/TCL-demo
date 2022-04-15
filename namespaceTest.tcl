#!/usr/bin/tclsh

namespace eval MyMath {
  # Create a variable inside the namespace
  variable myResult
  # Export the namespace
  namespace export Add
}

# Create procedures inside the namespace
proc MyMath::Add {a b } {  
  set ::MyMath::myResult [expr $a + $b]
  return [expr $a + $b]
}
MyMath::Add 10 23

puts $::MyMath::myResult


#嵌套命名空间
namespace eval extendedMath {
  # Create a variable inside the namespace
   namespace eval MyMath {
     # Create a variable inside the namespace
     variable myResult
   }
}
set ::MyMath::myResult "test1"
puts $::MyMath::myResult
set ::extendedMath::MyMath::myResult "test2"
puts $::extendedMath::MyMath::myResult

#import namespace
namespace import MyMath::*
puts [Add 10 30]
#删除命名空间
namespace forget MyMath::*
