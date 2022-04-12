#!/usr/bin/tclsh
set aa@$ 10
puts ${aa@$}

set aa_@$ 20
puts ${aa_@$}

#合法标识符
set {a$b} 30
puts ${a$b}


#非法标识符
#set a$b 50
#puts ${a$b}

set {$_a123} 100
puts ${$_a123}

set $ 5
puts ${$}

set @ 6
puts ${@}

set % 7
puts ${%}
