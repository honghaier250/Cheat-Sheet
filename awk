# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# using specific character as separator to sum integers from a file or stdin
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# print a multiplication table
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# Specify output separator character
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# Delete blank line
awk NF input.txt > output.txt

# Date calculation
echo "" | awk 'BEGIN{"date +%s -d '20170619'" | getline start; "date +%s" | getline end;}{print (end-start)/86400}'
echo "" | awk -v start="$(date +"%s" -d '20170619')" -v end="$(date +"%s")" '{print (end-start)/86400}'

# Addition and multiplication
cat /tmp/new_connection | awk -v time=`expr $COUNT \* 60` '{sum += $1} END {print sum, time, sum/time}'

# Continuous record ping
ping 192.168.41.254 | awk '{ print $0, strftime("%Y-%m-%d %H:%M:%S",systime()) }'

# Print punctuation
sudo ip addr list eth0 | grep -i "inet " | awk '{print $2}' | awk -F/ '{print $1}' | awk -F. '{print $1 "." $2 "." $3 ".1"}'

# format print
printf '1 2 3' | awk '{printf ("%s", $3)}'

# n lines before the match
awk -v n=1 '/foobar/ && NR>n {print window[(NR-n)%n]}{window[NR%n]=$0}' file.txt

# n lines after the match
awk -v n=1 '/foobar/{queue[NR+n]} NR in queue' file.txt
