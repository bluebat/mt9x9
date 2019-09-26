#!/usr/bin/make -sf
# 9x9 multiplication table in Make
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
# make -sf mt9x9.mk || ( chmod +x mt9x9.mk ; ./mt9x9.mk )

include gmsl
$(foreach i, 1 4 7, \
    $(foreach j, $(call sequence,1,9), \
        $(eval str=) \
        $(foreach k, $i $(call plus,$i,1) $(call plus,$i,2), \
            $(eval sum=$(call multiply,$k,$j)) \
            $(eval str=${str}  $kx$j=$(if $(call lt,${sum},10), ,)${sum}) \
        ) \
        $(info ${str}) \
    ) \
    $(info ) \
)
all:
