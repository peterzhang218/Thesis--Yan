set term postscript color enhanced font 'time-roman, 22'

set output "threesample.eps"

#set key box

#set key outside bottom
#set key left top
set key right top  

set boxwidth 1.00 absolute

set style fill pattern 1.00 border -1

#set style data line
set style data histogram

set style histogram cluster gap 1

set logscale y

set xtics ("Q10" 0, "Q11" 1, "Q12" 2)

#set yrange [0 : 1400]

set ylabel "Time (Sec)" font 'time-roman, 24'

set xlabel "Queries" font 'time-roman, 24'

set xtics font "Helvetica, 22"
set ytics font "Helvetica, 22" 
set ylabel font "Helvetica, 22" 
set xlabel font "Helvetica, 22" 

plot 'threesample.txt' using 1 t "{/Helvetica=22 Query}", '' using 2 t "{/Helvetica=22 Trial Query}"


