#!/opt/sfw/bin/gsed -Enuf
/^loss/b loss
/^quit/b quit
/[^[1-9]]1[^[1-9]]/b lev1
/[^[1-9]]2[^[1-9]]/b lev2
/[^[1-9]]3[^[1-9]]/b lev3
/[^[1-9]]4[^[1-9]]/b lev4

:lev1
/^stok_/{
s/.*/2/
b true
}
:lev2
/^scck_/{
s/.*/3/
b true
}
:lev3
/^bcbto_/{
s/.*/4/
b true
}
:lev4
/^sctobk_/{
s/.*/5/
b true
}
:lev5
/^cbsotbkcb_/{
s/.*/6/
b true
}
:loss
s/^([a-z]*_)(.*)/\2/
b true
:quit
s/.*/quit/
:true
p
