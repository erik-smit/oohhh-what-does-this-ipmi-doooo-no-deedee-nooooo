````
Raw: 0x30 0x70 0x0c
Param: See below

// for ATEN
LAN mode get: 
Input : NetFn 0x30 
Cmd 0x70 
Param1 0x0c 
Param2 0 [read] 

Output: Completion Code 0x00 
Data [dedicated/onBoard/failover] 

LAN mode set: 
Input : NetFn 0x30 
Cmd 0x70 
Param1 0x0c 
Param2 1 [write] 
Param3 [dedicated/onBoard/failover] 

Output: Completion Code 0x00 
dedicated: 0 
onBoard: 1 
failover: 2 
````
