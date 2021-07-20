reset
#set terminal tikz size 12cm, 8cm
#set output "traffic97_20.tex"
set terminal wxt
#set size square

set xlabel "year/month"
set ylabel "Traffic / Gbps"

set xdata time
set timefmt "%Y/%m/%d"
set format x "%Y/%m"
set format y "$%.1t \\times 10^{%T}$"

#set xrange ["1997/01/01":"2050/12/01"]
#set yrange [-100:15000000]
#set xrange ["1997/01/01":"2030/12/01"]
#set yrange [-100:100000]
set xrange ["1997/01/01":"2020/12/01"]
set yrange [-100:8000]

#set xtics "1997/01/01",31536000*10,"2050/12/01"
#set mxtics 10
#set ytics -1000,2000000,15000000
#set mytics 2
#set xtics "1997/01/01",31536000*10,"2030/12/01"
#set mxtics 10
#set ytics -1000,10000,100000
#set mytics 2
set xtics "1997/01/01",31536000*5,"2020/12/01"
set mxtics 5
set ytics -1000,1000,8000
set mytics 2

set key left top box
set key height 1
set key width -2
set key spacing 1.5

a1=1e-6
b1=0.1
f1(x)=a1*x+b1
#fit f1(x) "traffic.dat" via a1,b1

a2=0.0001
b2=1e-8
x2=1.5*10**(8)
f2(x)=a2*exp(b2*x)
#fit f2(x) "traffic.dat" via a2,b2

a3=4.8*10**(7)
b3=8.3*10**(-8)
c3=1.7*10**(-9)
f3(x)=a3*exp(-b3*x*exp(-c3*x))
#fit f3(x) "traffic.dat" via a3,b3,c3

a4=10000
b4=1
c4=1.5e-8
x4=1.57*10**(9)
f4(x)=a4/(1+b4*exp(-c4*(x-x4)))
fit f4(x) "traffic.dat" via a4,b4,c4,x4

plot "traffic.dat" using 1:2 every 1 notitle lt 21 lc -1,\
f4(x) title "ロジスティクス曲線"
#f2(x) title "指数曲線",\
#f1(x) title "線形",\
#f3(x) title "ゴンペルツ曲線",\
