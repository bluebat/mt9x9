#!/usr/bin/ruby
=begin
9x9 multiplication table in Ruby
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
=end
# ruby mt9x9.rb || ( chmod +x mt9x9.rb ; ./mt9x9.rb )

for i in (1..9).step(3)
    for j in (1..9)
        [i, i+1, i+2].each{|k|
            print "%dx%d=%2d\t" % [k, j, k*j]
        }
        print "\n"
    end
    puts
end
