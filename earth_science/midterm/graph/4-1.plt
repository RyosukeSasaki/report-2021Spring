set terminal tikz
set output "4-1.tex"
#set terminal wxt
set size square

set xlabel "$M$"
set ylabel "$n(M)$"

#set format x "$%.1t \times 10^{%T}$"

set xrange [0:10]
set yrange [0:3]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

#set key left top box
#set key height 1
#set key width -1
#set key spacing 1.5

f(x,a,b)=10**(a-b*x)

plot f(x,1,1) title "$a=1$, $b=1$", f(x,1,0.8) title "$a=1$, $b=0.8$", f(x,1,0.5) title "$a=1$, $b=0.5$"