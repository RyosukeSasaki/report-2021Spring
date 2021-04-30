reset
set terminal tikz size 8.0cm,8.0cm
set output "B_J.tex"
#set terminal wxt
set size square

set xrange [0:5]
set yrange [0:1.3]


set xlabel '$x$'
set ylabel '$B_J(x)$'
set samples 100000

set ytics 0, 0.5, 1.5
set mytics 1

set key right bottom box
set key height 1
set key width 3
set key spacing 1.5

n=1
coth(x)=cosh(x)/sinh(x)
B(x)=coth(x*(2*n+1)/(2*n))*(2*n+1)/(2*n)
C(x)=coth(x/(2*n))/(2*n)
BJ(x)=B(x)-C(x)
y(x)=1
f(x)=x*(n+1)/(3*n)

plot BJ(x) title "$B_{J=1}(x)$" lt 8 lw 2, y(x) notitle lt 8 dt 2, f(x) dt 5 lt 8 title '$y={k\Theta x}/{Ng^2\mu_B^2J^2\omega}$'