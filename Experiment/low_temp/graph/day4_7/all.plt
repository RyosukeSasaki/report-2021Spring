reset
set terminal tikz size 12cm, 10cm
set size square
set output "all.tex"
#set term wxt

set xlabel "$T/\\Theta_D$"
set ylabel "$R(t)$"

#set format y "$%.0t$"

#set xrange [2:22]
#set yrange [-0.1*10**(-9):4.5*10**(-9)]

#set xtics 0,0,0
#set mxtics 2
#set ytics 0,1*10**(-9),4.5*10**(-9)
#set mytics 2

set key right bottom box
set key height 0
set key width 3
set key spacing 1.5

TDPb=105
TDAu=165

a3=0.5*10**(-9)
a4=0.5*10**(-9)

b3=1*10**(-9)
b4=1*10**(-9)

f3(x)=a3+b3*x**3
f4(x)=a4+b4*x**4

fit [7.3:22] f3(x) "data.dat" u 1:2 via a3, b3
fit [7.3:22] f4(x) "data.dat" u 1:5 via a4, b4

plot "Pb.dat" u ($1/TDPb):(($2-a3)/(5.403*10**(-8))) title "鉛試料1",\
"Au.dat" u ($1/TDAu):(($2-a4)/(1.052*10**(-8))) title "金試料",\