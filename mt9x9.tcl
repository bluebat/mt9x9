#!/usr/bin/tclsh
# 9x9 multiplication table in TCL
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
# tclsh mt9x9.tcl || ( chmod +x mt9x9.tcl ; ./mt9x9.tcl )

for {set i 1} {$i <= 9} {incr i 3} {
    for {set j 1} {$j <= 9} {incr j} {
        for {set k $i} {$k < $i+3} {incr k} {
            puts -nonewline [format "%dx%d=%2d\t" $k $j [expr {$k*$j}]]
        }
        puts ""
    }
    puts ""
}
