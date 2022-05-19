ss
Utility to investigate sockets

Args
-4/-6 list ipv4/ipv6 sockets
-n numeric addresses instead of hostnames
-l list listing sockets
-u/-t/-x list udp/tcp/unix sockets
-p Show process(es) that using socket

# show all listing tcp sockets including the corresponding process
ss -tlp

# show all sockets connecting to 192.168.2.1 on port 80
ss -t dst 192.168.2.1:80

# show all ssh related connection
ss -t state established '( dport = :ssh or sport = :ssh )'

#
ss -nt '( dst :443 or dst :80 )'
ss -nt dst :443 or dst :80

# ss.html
https://www.cyberciti.biz/files/ss.html

# 通过地址过滤
$ ss -nt dst 74.125.236.178

# 简写子网过滤
$ ss -nt dst 74.125.236.178/16

# 地址和端口过滤
$ ss -nt dst 74.125.236.178:80

# 目的端口过滤
$ ss -nt dport = :80
State      Recv-Q Send-Q      Local Address:Port        Peer Address:Port 
ESTAB      0      0             192.168.1.2:56198     108.160.162.37:80    
ESTAB      0      0             192.168.1.2:39893      173.255.230.5:80    
ESTAB      0      0             192.168.1.2:55043     74.125.236.178:80

# 源地址为127.0.0.1且源端口大于5000的TCP连接
$ ss -nt src 127.0.0.1 sport gt :5000

# 本地smtp (port 25) socket连接
$ ss -ntlp sport eq :smtp

# 端口大于25的连接
$ ss -nt sport gt :25

# 目的地址端口小于100的连接
$ ss -nt dport \< :100

# 连接到远程80端口的连接
$ sudo ss -nt state connected dport = :80

ss -nt src 10.0.80.199:443

ss -np -t state established '( dst :8080 )' | wc -l
