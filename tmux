# Start tmux:
tmux

# Detach from tmux:
Ctrl-b d

# Restore tmux session:
tmux attach
tmux a -t $session_name

# Detach an already attached session (great if you are moving devices with different screen resolutions)
tmux attach -d 

# Display session:
tmux ls

# Start a shared session:
tmux -S /tmp/your_shared_session
chmod 777 /tmp/your_shared_session

# Help screen (Q to quit):
Ctrl-b ?
Ctrl+b :list-keys

#Help command
Ctrl+b :list-commands

# Scroll in window:
Ctrl-b PageUp/PageDown

# Reload configuation file
Ctrl-b : source-file /path/to/file

# Window management
# =================

# Create window:
Ctrl-b c

# Destroy window:
Ctrl-b x

# Switch between windows:
#
Ctrl-b [0-9]
or
Ctrl-b Arrows

# Split windows horizontally:
Ctrl-b %

# Split windows vertically:
Ctrl-b "

# Rename windows
pCtrl-b , newname

#更换pane排版
Ctrl+b “空格”

Ctrl-A 相当于HOME键，用于将光标定位到本行最前面
Ctrl-E 相当于End键，即将光标移动到本行末尾
Ctrl-B 相当于左箭头键，用于将光标向左移动一格
Ctrl-F 相当于右箭头键，用于将光标向右移动一格
Ctrl-H 删除光标左侧的一个字符
Ctrl-D 相当于Del键，即删除光标所在处的字符
Ctrl-K 用于删除从光标处开始到结尾处的所有字符
Ctrl-U 用于删除从光标开始到行首的所有字符。一般在密码或命令输入错误时常用
Ctrl-W 用于删除当前光标左侧的一个单词
Ctrl-L 清屏，相当于clear命令
Ctrl-R 进入历史命令查找状态，然后你输入几个关键字符，就可以找到你使用过的命令
Ctrl-P 相当于上箭头键，即显示上一个命令
Ctrl-N 相当于下箭头键，即显示下一个命令

# synchronize panes
setw synchronize-panes on

# swap window
swap-window -t -1
swap-window -t +1

# restore window size
tmux detach-client -t /dev/pts/X

tmux list-client
tmux detach-client -s ssl
:resize-window -A
