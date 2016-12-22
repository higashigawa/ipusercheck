chcp 65001

for /l %%i in (0,1,255) do ping -w 1 -n 1 172.28.104.%%i >> arp.log && arp -a 172.28.104.%%i >> arp.log
#for /l %%i in (0,1,255) do ping -w 1 -n 1 192.168.2.%%i >> arp.log && arp -a 192.168.2.%%i >> arp.log

findstr "Reply from" arp.log >> anser.log && findstr dynamic arp.log >> anser.log && findstr static arp.log >> anser.log
