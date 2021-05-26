reset
set terminal tikz size 10cm, 8cm
set output "quick.tex"
#set terminal wxt
set size square

set xlabel "スレッド数"
set ylabel "計算時間 / $\\si{\\second}$"

#set format y "$%.1t$"

set xrange [0:7]
set yrange [0.0005:0.002]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

#set key left top box
#set key spacing 1.5

r=0.8
a=0.01
f(x)=a*(r/x+(1-r))
fit f(x) "quick.dat" u 1:2 via a, r

plot "quick.dat" u 1:2 every 1 notitle lt 21 lc -1 ps 2, f(x) notitle lt 21 lc -1 dt 5