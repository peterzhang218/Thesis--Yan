reset
set term postscript color enhanced font 'time-roman, 22'


set output "limit.eps"

#set key box

#set key outside bottom
set key right top  

set boxwidth 1.00 absolute

set style fill pattern 1.00 border -1

set style data linespoints
#set style data histogram

#set style histogram cluster gap 1

set grid xtics
set grid ytics

#set logscale y

#set xtics ("Q1" 0, "Q2" 1, "Q3" 2, "Q4" 3, "Q5" 4, "Q6" 5, "Q7" 6, "Q8" 7, "Q9" 8, "Q10" 9, "Q11" 10, "Q12" 11)

set ylabel "Time (Sec)" font 'time-roman, 24'

set xlabel "Memory (GB)" font 'time-roman, 24'
set xtics font "Helvetica, 22"
set ytics font "Helvetica, 22" 
set ylabel font "Helvetica, 22" 
set xlabel font "Helvetica, 22" 
plot 'limit.dat' t "{/Helvetica=22 Efficiency v.s. Space Cost}"


