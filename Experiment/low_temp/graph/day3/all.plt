reset
set terminal tikz size 12cm, 10cm
set size square
set output "7k.tex"
fname = "7k.dat"

set xlabel "$H$ / $\\si{Oe}$"
set ylabel "$\\rho$ / $\\times10^{-11}\\ \\si{\\ohm.\\metre}$"

set format y "$%2.0f$"

#set xrange [0:0]
#set yrange [-0.1*10**(-9):4.5*10**(-9)]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,1*10**(-9),4.5*10**(-9)
#set mytics 2

SPb1=0.010147432
SPb2=0.00921752
LPb1=10.47
LPb2=12.2
I=0.002326154

set key right bottom box
set key height 0
set key width 2
set key spacing 1.5

plot fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) title "Pb1",\
 fname u ($1*7.3721):($4*SPb2/I/LPb2/1000/10**(9)*10**(11)) title "Pb2"

set output  "6_5k.tex"
fname =     "6_5k.dat"
plot fname u ($1*7.3721):($2*SPb1/I/LPb1/1000/10**(9)*10**(11)) title "Pb1",\
 fname u ($1*7.3721):($4*SPb2/I/LPb2/1000/10**(9)*10**(11)) title "Pb2"