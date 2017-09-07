#############disk

set term postscript color enhanced font 'time-roman, 22'

set output "disk.eps"

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

set yrange [0:18000]

set xtics ("Memory" 0, "Disk" 1)

set ylabel "Time (Sec)" font 'time-roman, 24'

#set xlabel "Queries" font 'time-roman, 24'

plot 'disk.txt' t "{/Times=22 }"




#############fpm
set output "fpm.eps"
set yrange [0:18000]
set ylabel "Time (Sec)" font 'time-roman, 24'

set xtics ("GSF" 0, "FPM" 1)
plot 'fpm.txt' 

#############fpm_space
set output "fpm_space.eps"
set ylabel "Memory Cost (GB)" font 'time-roman, 24'
set yrange [0:18]
set xtics ("GSF" 0, "FPM" 1)
plot 'fpm_space.txt' 

#############omega
set output "omega.eps"
set ylabel "Time (Sec)" font 'time-roman, 24'
set xlabel "Freqency Count Threshold" font 'time-roman, 24'
set yrange [0:20000]
set xtics ("5" 0, "4" 1, "2" 2)
plot 'omega.txt' 