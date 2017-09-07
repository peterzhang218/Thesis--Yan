set term postscript color enhanced font 'time-roman, 22'

set output "qfpm.eps"

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

set xtics ("Q1" 0, "Q2" 1, "Q3" 2, "Q4" 3, "Q5" 4, "Q6" 5, "Q7" 6, "Q8" 7, "Q9" 8, "Q10" 9, "Q11" 10, "Q12" 11)

set ylabel "Time (Sec)" font 'time-roman, 24'

set xlabel "Queries" font 'time-roman, 24'

plot 'qfpm.txt' using 1 t "{/Times=22 GSF}", '' using 2 t "{/Times=22 FPM}"


