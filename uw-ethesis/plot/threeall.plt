set term postscript color enhanced font 'time-roman, 22'

set output "threeall.eps"

#set key box

#set key outside bottom
#set key left top
set key right top  

set boxwidth 1.00 absolute

set style fill pattern 1.00 border -1

#set style data line
set style data histogram

set style histogram cluster gap 1

#set logscale y

set xtics ("Q10" 0, "Q11" 1, "Q12" 2)

set yrange [0 : 2200]

set ylabel "Time (Sec)" font 'time-roman, 24'

set xlabel "Queries" font 'time-roman, 24'

plot 'threeall.txt' using 1 t "{/Times=22 Decompose\\\_Join}", '' using 2 t "{/Times=22 Decompose\\\_Join^{*}}", '' using 3 t "{/Times=22 Decompose\\\_Join^{+}}"


