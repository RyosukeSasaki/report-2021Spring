set terminal png size 640,640
set output 'Cv_Tk.png'

set size square
#set format y "%.1t"

set xrange [0:10]
set yrange [0:0.3]

#set key box
set key height 0.1
set key width 0.2
set key spacing 1.5
set xlabel 'TK_B'
set ylabel 'C_v / NK_B'

f(x,ea,eb)=(ea-eb)**2*exp((ea-eb)/x)/((1+exp((ea-eb)/x))**2)

plot f(x,0,1) notitle
reset


set terminal png size 640,640
set output 'L_Tk.png'

set size square
#set format y "%.1t"

set xrange [0:100]
#set yrange [0:0.3]

#set key box
set key height 0.1
set key width 0.2
set key spacing 1.5
set xlabel 'TK_B'
set ylabel 'L / Na'

a=1
b=2

g(x,ea,eb)=(1+exp((ea-eb)/x)*b/a)/(1+exp((ea-eb)/x))

plot g(x,0,1) notitle
reset