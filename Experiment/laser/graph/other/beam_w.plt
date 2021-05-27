reset
set terminal tikz size 9cm, 9cm
set output "beam_w.tex"
#set terminal wxt
set size square

set xlabel "$z$ / $\\si{\\metre}$"
set ylabel "$w(z)$"

#set format x "$%.1t \times 10^{%T}$"

set logscale x
set xrange [1:100]
set yrange [0:0.02]

#set xtics 0,0,0
#set mxtics 2
set ytics 0,0.01,0.02
set mytics 5

w(x,a,l)=sqrt(a**2+(l*x/pi/a)**2)

plot w(x,0.001,6*10**(-7)) lt 21 lc -1 notitle#title "$\\lambda=600\\si{\\nano.\\metre},\\ w_0=1\\si{\\milli.\\metre}$"
