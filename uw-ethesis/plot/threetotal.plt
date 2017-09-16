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


set xtics ("Decompose\\\_\nJoin" 0, "Decompose\\\_\nJoin^{*}" 1, "Decompose\\\_\nJoin^{+}" 2)

set ylabel "Time (Sec)" font 'Helvetica, 22'

#set xlabel "Queries" font 'Helvetica, 22'

set xtics font "Helvetica, 22"
set ytics font "Helvetica, 22" 
plot 'threetotal.txt' t "{/Helvetica=22 }"