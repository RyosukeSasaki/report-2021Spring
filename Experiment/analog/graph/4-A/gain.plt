reset
set terminal tikz size 12,8
pi=3.14159265
fname   ="4-a-1.txt"
oname   ="4-a-1.tex"
set output oname
#set term wxt

set xlabel "$V_{diode}$ / $\\si{\\volt}$"
set ylabel "$I_{diode}$ / $\\si{\\ampere}$"
#set y2label "$V_d$ / $\\si{\\volt}$"
plot fname u 1:2 notitle lt 1,\
#fname u 1:3 axis x1y2 title "$V_d$" lt 2 ps 2,\
#g(x) notitle lt -1 dt 2 axis x1y2