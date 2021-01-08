#!/usr/bin/make -sf
# 9x9 multiplication table in Make
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
# ./mt9x9.mk || make -sf mt9x9.mk

include gmsl
$(foreach i, 1 4 7, \
    $(foreach j, $(call sequence,1,9), \
        $(eval str=) \
        $(foreach k, $i $(call plus,$i,1) $(call plus,$i,2), \
            $(eval n=$(call multiply,$k,$j)) \
            $(eval str=${str}  $kx$j=$(if $(call lt,$n,10), ,)$n) \
        ) \
        $(info ${str}) \
    ) \
    $(info ) \
)
all:
