#!/usr/bin/tclsh

#write to file
proc Write {} {
	set fp [open "input.txt" w+]
		puts $fp "test"
		close $fp
}



#read
set fp [open "input.txt" r]
set file_data [read $fp]
puts $file_data
close $fp


#按行读取
set fp [open "input.txt" r]
while { [gets $fp data] >= 0 } {
   puts $data
}
close $fp
