reset
set terminal tikz size 12cm, 8cm
set output "fig.tex"
#set terminal wxt
#set size square

set xlabel "$T$ / $\\si{\\kelvin}$"
set ylabel "$\\langle M\\rangle$ / $\\times10^{-6}\\ \\si{\\weber.\\metre}$"
set samples 1000000

set format y "$%.1t$"

set xrange [0:300]
#set yrange [0:0]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,0,0
#set mytics 2

mu_Wbm=1.17*10**(-29)
mu_JT=9.27*10**(-24)
k=1.38*10**(-23)
H=50
N=6.02*10**(23)

f(x)=N*mu_Wbm*tanh(mu_JT*H/k/x)
plot f(x) notitle