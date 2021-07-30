reset
set terminal tikz size 10cm, 8cm
set output "01.tex"
set size square
set xlabel "$x$"
set ylabel "$y$"
f(x) = 9.8+5.0*x
plot "../c/data1.txt" every ::1 notitle, f(x) notitle

reset
set terminal tikz size 10cm, 8cm
set output "02.tex"
set size square
set xlabel "$x$"
set ylabel "$y$"
f(x) = 9.9+3.0*x+x**2
plot "../c/data2.txt" every ::1 notitle, f(x) notitle

reset
set terminal tikz size 10cm, 8cm
set output "03.tex"
set size square
set xlabel "$x$"
set ylabel "$y$"
f(x) = 9.8+5.1*x+0.2*x**2+1.2*x**3
plot "../c/data3.txt" every ::1 notitle, f(x) notitle

reset
set terminal tikz size 10cm, 8cm
set output "04.tex"
set size square
set xlabel "$x$"
set ylabel "$y$"
f(x) = 9.7+5.1*x+0.4*x**2+0.5*x**3+2.0*x**4
plot "../c/data4.txt" every ::1 notitle, f(x) notitle

reset
set terminal tikz size 10cm, 8cm
set output "05.tex"
set size square
set xlabel "$x$"
set ylabel "$y$"
f(x) = 9.7+5.1*x+0.2*x**2+0.6*x**3+1.0*x**4+1.3*x**5
plot "../c/data5.txt" every ::1 notitle, f(x) notitle