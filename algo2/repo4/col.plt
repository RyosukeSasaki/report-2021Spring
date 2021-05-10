reset
set terminal tikz
set output "col_b.tex"
#set terminal wxt
set size square

set xrange [0:11000]
#set yrange [0:1.3]

set xlabel '$データ数$'
set ylabel '$計算量$'

#set ytics 0, 0.5, 1.5
#set mytics 1

set key top left box
set key height 0
set key width -1
set key spacing 1.5

f(x) = a*x**2
g(x) = b*x**2
fit f(x) "col_b.dat" u 1:2 via a
fit g(x) "col_b.dat" u 1:3 via b
plot "col_b.dat" u 1:2 title "コピー回数" lc 6, "col_b.dat" u 1:3 title "比較回数" lc 7, f(x) notitle lc 6, g(x) notitle lc 7


reset
set terminal tikz
set output "col_h.tex"
#set terminal wxt
set size square

set xrange [0:11000]
#set yrange [0:1.3]

set xlabel '$データ数$'
set ylabel '$計算量$'

#set ytics 0, 0.5, 1.5
#set mytics 1

set key top left box
set key height 0
set key width -1
set key spacing 1.5

f(x) = a*x*log(x)
g(x) = b*x*log(x)
fit f(x) "col_h.dat" u 1:2 via a
fit g(x) "col_h.dat" u 1:3 via b
plot "col_h.dat" u 1:2 title "コピー回数" lc 6, "col_h.dat" u 1:3 title "比較回数" lc 7, f(x) notitle lc 6, g(x) notitle lc 7


reset
set terminal tikz
set output "col_c.tex"
#set terminal wxt
set size square

set xrange [0:11000]
#set yrange [0:1.3]

set xlabel '$データ数$'
set ylabel '$計算量$'

#set ytics 0, 0.5, 1.5
#set mytics 1

set key top left box
set key height 0
set key width -1
set key spacing 1.5

f(x) = a*x
g(x) = 0
fit f(x) "col_c.dat" u 1:2 via a
#fit g(x) "col_c.dat" u 1:3 via b
plot "col_c.dat" u 1:2 title "コピー回数" lc 6, "col_c.dat" u 1:3 title "比較回数" lc 7, f(x) notitle lc 6, g(x) notitle lc 7