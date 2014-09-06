````
Raw: 0x30 0x70 0x63
Param: See below

Filename: SMT_X9_217.bin    version: 2.17    Date: 02-08-2013

1.[New Feature] Link Speed/Duplex can be configured manually through Web/OEM commands when Dedicated LAN mode is set

	OEM command format:
	NetFn:0x30/ CMD:0x70/ SubCMD:0x63	Set Link configuration (only for Dedicated LAN mode)
	Data 1: 0/1 [Get/Set]
	Data 2: 
  		0 :Auto-neogitaion 
  		1: 10M   Half duplex
  		2: 10M   Full duplex
  		3:100M  Half duplex
  		4:100M  Full duplex
````
