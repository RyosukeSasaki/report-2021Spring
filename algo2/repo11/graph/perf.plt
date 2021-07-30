reset
set terminal tikz size 10cm, 8cm
set output "init.tex"
#set terminal wxt
set size square
set xlabel "次数 $m$"
set ylabel "CPU時間"
set xrange [0:6]
#set yrange [0:0]
set xtics 0,1,6
set mxtics 1
a=1
b=1
n=2
init(x) = a*x**n+b
fit init(x) "initialize.dat" via a, b, n
plot "initialize.dat" every 1 notitle, init(x) notitle

reset
set terminal tikz size 10cm, 8cm
set output "calc.tex"
#set terminal wxt
set size square
set xlabel "次数 $m$"
set ylabel "CPU時間"
set xrange [0:6]
#set yrange [0:0]
set xtics 0,1,6
set mxtics 1
a=1
b=1
n=2
calc(x) = a*x**n+b
fit calc(x) "calc.dat" via a, b, n
plot "calc.dat" every 1 notitle, calc(x) notitle