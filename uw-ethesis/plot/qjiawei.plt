set term postscript color enhanced font 'time-roman, 22'

set output "qjiawei.eps"

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

set xtics ("Q1" 0, "Q2" 1, "Q3" 2, "Q4" 3)

set ylabel "Time (ms)" font 'time-roman, 24'

set xlabel "Queries" font 'time-roman, 24'

plot 'qjiawei.txt' using 1 t "{/Times=22 CubePlanner}", '' using 2 t "{/Times=22 PMA}"


