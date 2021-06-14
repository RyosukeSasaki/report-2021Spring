reset
set terminal tikz size 12,8
pi=3.14159265
fname   ="1-B/1-B-01.dat"
oname   ="1-B/1-B-01.tex"
set output oname
#set terminal wxt
#set size ratio 0.6
set samples 100
#set ytics nomirror
#set y2tics nomirror

set xrange [-3.5:3.5]
set yrange [-16:16]

#set key at 5,14 box Right
set key right bottom box
set key width 2
set key spacing 1.5

a=6
b=0
f(x)=a*x+b
fit[-3:3] f(x) fname u 1:2 via a, b

#c=0.77
#d=-3.4
#g(x)=c*x+d
#fit[4.4:6.1] g(x) fname u 1:3 via c, d

set xlabel "$V_i$ / $\\si{\\volt}$"
set ylabel "$V_o$ / $\\si{\\volt}$"
#set y2label "$V_d$ / $\\si{\\volt}$"
plot fname u 1:2 axis x1y1 title "$V_o$" lt 1 ps 2,\
f(x) notitle lt -1 dt 2 axis x1y1,\
#fname u 1:3 axis x1y2 title "$V_d$" lt 2 ps 2,\
#g(x) notitle lt -1 dt 2 axis x1y2