#!/opt/sfw/bin/gsed -Enuf

/^1/b level1
/^2/b level2
/^3/b level3
/^4/b level4
/^5/b level5
/^6/b win

b


:level1
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|              LEVEL 1                  |\
|             Recipe:                   |\
|             1)Steak                   |\
|             2)Tomato                  |\
|             3)Onion                   |\
|             4)Ketchup                 |\
|             5)Ban                     |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
+---------------------------------------+\
/p
}
b
:level2
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|              LEVEL 2                  |\
|             Recipe:                   |\
|             1)Steak                   |\
|             2)Cheese                  |\
|             3)Cheese                  |\
|             4)Ketchup                 |\
|             5)Ban                     |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
+---------------------------------------+\
/p
}
b
:level3
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|              LEVEL 3                  |\
|             Recipe:                   |\
|             1)Becon                   |\
|             2)Cheese                  |\
|             3)Becon                   |\
|             4)Tomato                  |\
|             5)Onion                   |\
|             6)Ban                     |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
+---------------------------------------+\
/p
}
b
:level4
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|              LEVEL 4                  |\
|             Recipe:                   |\
|             1)Steak                   |\
|             2)Cheese                  |\
|             3)Tomato                  |\
|             4)Onion                   |\
|             5)Becon                   |\
|             6)Ketchup                 |\
|             7)Ban                     |\
|                                       |\
|                                       |\
|                                       |\
+---------------------------------------+\
/p
}
b

:level5
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|              LEVEL 5                  |\
|             Recipe:                   |\
|             1)Cheese                  |\
|             2)Becon                   |\
|             3)Steak                   |\
|             4)Onion                   |\
|             5)Tomato                  |\
|             6)Becon                   |\
|             7)Ketchup                 |\
|             8)Cheese                  |\
|             9)Becon                   |\
|             10)Ban                    |\
+---------------------------------------+\
/p
}
b
:win
 { s/.*/\
+---------------------------------------+\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|             YOU WIN!!!                |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
|                                       |\
+---------------------------------------+\
/p
}
b