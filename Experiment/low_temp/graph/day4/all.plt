reset
set terminal tikz size 12cm, 10cm
set size square
set output  "4k.tex"
fname =     "4k.dat"

set xlabel "$H$ / $\\si{Oe}$"
set ylabel "$\\rho$ / $\\times10^{-11}\\ \\si{\\ohm.\\metre}$"

#set format y "$%2.0f$"

#set xrange [0:0]
set yrange [-0.5:3.5]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,1*10**(-9),4.5*10**(-9)
#set mytics 2

SPb1=0.010147432
SPb2=0.00921752
LPb1=10.47
LPb2=12.2
I=0.002326154

set key top left box
set key height 0
set key width 2
set key spacing 1.5

a=10
b=-100
y(x)=a*x+b

c=0.01
d=-0.1
g(x)=c*x+d

fit [567:605] y(x) fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) via a, b
fit [500:567] g(x) fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) via c, d

plot fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) title "Pb1",\
y(x) notitle dt 2 lc -1,\
g(x) notitle dt 5 lc -1

set term wxt
plot fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) title "Pb1",\
y(x) notitle dt 2 lc -1,\
g(x) notitle dt 5 lc -1