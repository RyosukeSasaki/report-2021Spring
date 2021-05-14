reset
set terminal tikz size 12cm, 8cm
set output "solar_radio_fit.tex"
#set terminal wxt
#set size square

set xlabel "経過時間$t$ / $\\si{\\second}$"
set ylabel "電圧 / $\\si{\\volt}$"

#set format x "$%.1t \times 10^{%T}$"

set xrange [583:3622]
set yrange [1:2.5]

set xtics 0,1000,4000
set mxtics 2
set ytics 1,0.2,2.6
set mytics 2

A=1
B=1.5
xz=2000
s=400
f(x)=A+B*exp(-(x-xz)**2/(2*s**2))

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

fit [583:3622] f(x) "data/2019-04-22_134315.txt" via A, B, xz, s
plot "data/2019-04-22_134315.txt" every 10  title "測定値" lt 21 lc -1, f(x) title "$v(t)$" lt 7 lw 2