#!/usr/bin/crystal
# 9x9 multiplication table in Crystal
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# crystal build mt9x9.cr && ./mt9x9 || crystal mt9x9.cr || ./mt9x9.cr

1.step(to: 9, by: 3) do |i|
    1.upto(9) do |j|
        [i, i+1, i+2].each do |k|
            print "#{k}x#{j}=#{k*j<10 ? " " : ""}#{k*j}\t"
        end
        puts
    end
    puts
end
