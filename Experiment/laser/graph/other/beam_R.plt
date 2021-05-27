reset
set terminal tikz size 9cm, 9cm
set output "beam_R.tex"
#set terminal wxt
set size square

set xlabel "$z$ / $\\si{\\metre}$"
set ylabel "$R(z)$"

#set format x "$%.1t \times 10^{%T}$"

#set logscale x
set xrange [1:100]
set yrange [0:100]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0.004,0.02
#set mytics 2

R(x,a,l)=x+pi**2*a**4/l**2/x

plot R(x,0.001,6*10**(-7)) lt 21 lc -1 notitle#title "$\\lambda=600\\si{\\nano.\\metre},\\ w_0=1\\si{\\milli.\\metre}$"