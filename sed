# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# To remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# To replace newlines in multiple lines
sed ':a;N;$!ba;s/\n//g'  file.txt

# To print x-y line
sed -n 'x,yp' file.txt

# Append to end of same line
sed -i "${line_number}s/$/$ $current_connection |${backend_service}/" file.txt

# Merge multi-blank
sed -i 's/[  ][  ]*/ /g' file.txt

# delete empty line
sed '/^$/d' input.txt > output.txt

# delete blank line
sed '/^\s*$/d' input.txt > output.txt

# Print specify line
sed -n '28197,28221p' file.txt

#https://stackoverflow.com/questions/1251999/how-can-i-replace-a-newline-n-using-sed
# replace '\r\n' with ','
sed -E ':a;N;$!ba;s/\r{0,1}\n/,/g' file.txt

# Append to end of file
sed '$ a> Website Design' file.txt

# Print Line Number
sed -n '$ =' file.txt

# Print Match Line
sed -n '/Databases/=' file.txt

sed -n '/PATTERN/,/PATTERN/ {=p}' filename

# &
sed 's@/usr/bin@&/local@g' file.txt
sed 's@^.*$@<<<&>>>@g' file.txt
