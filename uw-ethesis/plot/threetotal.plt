#############disk

set term postscript color enhanced font 'time-roman, 22'

set output "threetotal.eps"

set key off

#set key box

#set key outside bottom
#set key left top
#set key right top  

set boxwidth 1.00 absolute

set style fill pattern 1.00 border -1

#set style data line
set style data histogram

set style histogram cluster gap 1

#set logscale y

set yrange [0:5000]

set xtics font ", 13"

set xtics ("Decompose\\\_Join" 0, "Decompose\\\_Join^{*}" 1, "Decompose\\\_Join^{+}" 2)

set ylabel "Time (Sec)" font 'time-roman, 24'

#set xlabel "Queries" font 'time-roman, 24'

plot 'threetotal.txt' t "{/Times=22 }"