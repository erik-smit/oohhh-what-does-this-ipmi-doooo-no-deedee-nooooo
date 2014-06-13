// for AMI
LAN mode get:
Input : NetFn 0x30
Cmd 0x70
Param1 0x0c
Param2 0 [read]
Param3 0
Parem4 0
Output: Completion Code 0x00
Data 1 disable/enable [0/1]
Data 2 dedicate/on-board [0/1]


LAN mode set:
Input : NetFn 0x30
Cmd 0x70
Param1 0x0c
Param2 1 [write]
Param3 [disable/enable]
Param4 [dedicated/onBoard] -> 0/1
