#!/opt/sfw/bin/gsed -Enuf
# Sed burger
# 24th of December, 2016

#ingredients key
#s-steak
#t-tomato
#o-onion
#k-ketchup
#c-cheese
#e-ban

/^e/b ban
/^$/b print
/^q/b quit
/^[ostkcb]/b check_hight
b
:check_hight
x
{
/[btoksc]{10}/b error
}
x
/^s/b steak
/^t/b tomato
/^o/b onion
/^k/b ketchup
/^c/b cheese
/^b/b becon

#If screen is empty - print initial picture
:print
g
{s/.*/\
+---------------------------------------+\
|VAAAAAAAAAAAAAV|PPPPPPPPPLRLRLPPPPPPPPP|\
|VAAAAAAAAAAAAAV|PPPPPPPLRLRLRLRLPPPPPPP|\
|VAAAAAAAAAAAAAV|PPPPPLRLSHRLRLSLRLPPPPP|\
|VAAAAAAAAAAAAAV|PPPLRLRLRLRLRHRLRLRLPPP|\
|VAAAAAAAAAAAAAV|PPRLRLSLRLRLRLRLSLRLRPP|\
|VAAAAAAAAAAAAAV|PLRLRLRLRHRLRLRLRLRLRLP|\
|VAAAAAAAAAAAAAV|RLRLSHRLRHRLRLRLRLSLRLR|\
|VAAAAAAAAAAAAAV|PLRLRLRLRLRLRLRHRLRLRLP|\
|VAAAAAAAAAAAAAV|PPRLRLSLRLRLRLRLSLRLRPP|\
|VAAAAAAAAAAAAAV|PPPPRLRLRLRLRLRHRLRPPPP|\
|VAAAAAAAAAAAAAV|PPPPPPRLSLRLRHSLRPPPPPP|\
|VAAAAAAAAAAAAAV|PPPPPPPLRHRLRLRLPPPPPPP|\
|VBBBBBBBBBBBBBV|PPPPPPPPPLRLRLPPPPPPPPP|\
+---------------------------------------+\
/
}
#Raund
{
#s/R/\[48;5;172m \[0m/g
x
s/R/\@/g
x
}
h
s/H/\[48;5;172m \[0m/g
s/S/\[48;5;172m \[0m/g
s/R/\[48;5;172m \[0m/g
s/L/\[48;5;172m \[0m/g
b end 

:steak
g
{
s/^(.*)VA*V(.*$)/\1VAMMMMMMMMMMMAV\2/
s/^(.*)$/\1s/
}
h
s/R/\[48;5;52m_\[0m/g
s/S/\[48;5;52m_\[0m/g
s/L/\[48;5;52m|\[0m/g
s/H/\[48;5;52m|\[0m/g
b end
:tomato
g
{
s/^(.*)VA*V(.*$)/\1VATTTTTTTTTTTAV\2/
s/^(.*)$/\1t/
}
h
s/(L|R|H)/\[48;5;196m \[0m/g
s/S/\[48;5;11m \[0m/g
b end
:onion
g
{
s/^(.*)VA*V(.*$)/\1VAOOOOOOOOOOOAV\2/
s/^(.*)$/\1o/
}
h
s/(H|S|R|L)/\[48;5;5m|\[0m/g
b end
:ketchup
g
{
s/^(.*)VA*V(.*$)/\1VAKKKKKKKKKKKAV\2/
s/^(.*)$/\1k/
}
h
s/(L|R|H|S)/\[48;5;1m \[0m/g
b end
:cheese
g
{
s/^(.*)VA*V(.*$)/\1VACCCCCCCCCCCAV\2/
s/^(.*)$/\1c/
}
h
s/(L|R|S)/\[48;5;11m \[0m/g
s/H/\[48;5;0m \[0m/g
b end

:becon
g
{
s/^(.*)VA*V(.*$)/\1VANNNNNNNNNNNAV\2/
s/^(.*)$/\1b/
}
h
s/(R|S)/\[48;5;15m \[0m/g
s/(L|H)/\[48;5;88m \[0m/g
b end
:ban
g
{
s/^(.*)VA*V(.*$)/\1VEEEEEEEEEEEEEV\2/
s/^(.*)VA*V(.*$)/\1VAEEEEEEEEEEEAV\2/
s/^(.*)VA*V(.*$)/\1VAAEEEEEEEEEAAV\2/
}
h
#Add colors to blocks
s/E/\[48;5;172m.\[0m/g
s/(A|V|P)/ /g
s/M/\[48;5;52m \[0m/g
s/T/\[48;5;196m \[0m/g
s/B/\[48;5;172m \[0m/g
s/(L|R|S|H)/\[48;5;172m.\[0m/g
s/O/\[48;5;5m \[0m/g
s/K/\[48;5;1m \[0m/g
s/C/\[48;5;11m \[0m/g
s/L/ /g
s/N/\[48;5;88m \[0m/g
s/[stockb]/ /g
i\
[H
p
b write
:end
#Add colors to blocks

#VOID
s/(A|V|P)/ /g
#STEAK
s/M/\[48;5;52m \[0m/g
#tomato
s/T/\[48;5;196m \[0m/g
#onion
s/O/\[48;5;5m \[0m/g
#ban
s/B/\[48;5;172m \[0m/g
#ketchup
s/K/\[48;5;1m \[0m/g
#cheese
s/C/\[48;5;11m \[0m/g
#becon
s/N/\[48;5;88m \[0m/g

i\
[H
s/[stockb]/ /g
p
b
:error
s/.*/GAME OVER/
p
s/.*/loss/
b write
:quit
s/.*/quit/
w res
q
b
:write
x
w res
x
q
