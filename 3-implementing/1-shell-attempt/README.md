````
Supermicro X9SCL-F running SMT_X9_315

$ ./ipmi.sh
-------------------------------------
Get Device ID
Target: BMC [0x20]

Request :06 0x01
Response: 20 01 03 15 02 bf 7c 2a 00 34 06
-------------------------------------
Read FRU Data
Target: BMC [0x20]

Request :0a 0x11 0x00 0x00 0x00 0xff
Response:
-------------------------------------
Write FRU Data
Target: BMC [0x20]

Request :0a 0x12 0x00 0x00 0x00 0x01 0x01 0x02 0x04 0x08 0x00 0x00 0xf0
Response: 08
-------------------------------------
Get DCMI Capabilities Info #1
Target: BMC [0x20]

Request :2c 0x01 0xdc 0x01
Response: dc 01 01 02 0f 01 39
-------------------------------------
Get DCMI Capabilities Info #2
Target: BMC [0x20]

Request :2c 0x01 0xdc 0x02
Response: dc 01 01 02 00 02 05 07
-------------------------------------
Get DCMI Capabilities Info #3
Target: BMC [0x20]

Request :2c 0x01 0xdc 0x03
Response: dc 01 01 02 20 01
-------------------------------------
Get DCMI Capabilities Info #4
Target: BMC [0x20]

Request :2c 0x01 0xdc 0x04
Response: dc 01 01 02 01 ff ff
-------------------------------------
Get DCMI Capabilities Info #5 (opt)
Target: BMC [0x20]

Request :2c 0x01 0xdc 0x05
Response: dc 01 01 02 09 05 0f 1e 41 43 47 4f 5e 81
-------------------------------------
Get DCMI Sensor Info
Target: BMC [0x20]

Request :2c 0x07 0xdc 0x01 0x41 0x00 0x00
Response: Unable to send RAW command (channel=0x0 netfn=0x2c lun=0x0 cmd=0x7 rsp=0xcb): Requested sensor, data, or record not found
-------------------------------------
Get DCMI Configuration Parameters #1
Target: BMC [0x20]

Request :2c 0x13 0xdc 0x01
Response: Unable to send RAW command (channel=0x0 netfn=0x2c lun=0x0 cmd=0x13 rsp=0xc1): Invalid command
-------------------------------------
Get Asset Tag
Target: BMC [0x20]

Request :2c 0x06 0xdc 0x00 0x10
Response:
-------------------------------------
Get Management Controller Identifier String
Target: BMC [0x20]

Request :2c 0x09 0xdc 0x00 0x10
Response: noo-deedee-noo
-------------------------------------
Get Power Reading
Target: BMC [0x20]

Request :2c 0x02 0xdc 0x01 0x01 0x00
Response: Unable to send RAW command (channel=0x0 netfn=0x2c lun=0x0 cmd=0x2 rsp=0xcc): Invalid data field in request
-------------------------------------
Get Device ID
Target: ME [0x2c]

Request :06 0x01
Response: 50 01 02 20 02 21 57 01 00 01 0b 02 04 90 01
-------------------------------------
Get ME Factory Presets Signature
Target: ME [0x2c]

Request :2e 0xe0 0x57 0x01 0x00
Response: 57 01 00 00 00 00 00 48 14 66 3c f3 9e b7 6a 1e e0 91 d5 f6 95 35 2f 76 4a 28 f2 58 8a 77 af d9 1b e1 f9 39 e7 a7 cb
-------------------------------------
Get ME FW Capabilities
Target: ME [0x2c]

Request :2e 0xde 0x57 0x01 0x00 0x0 0x0 0x0 0x0 0x02 0x00 0x00 0xff
Response: Unable to send RAW command (channel=0x0 netfn=0x2e lun=0x0 cmd=0xde rsp=0xc1): Invalid command
-------------------------------------
PECI Ping()
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x00 0x00
Response: 57 01 00
-------------------------------------
PECI GetDIB()
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x01 0x08 0xf7
Response: 57 01 00 00 32 00 00 00 00 00 00
-------------------------------------
PECI GetTemp()
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x01 0x02 0x01
Response: 57 01 00 cf f3
-------------------------------------
PECI RdPkgConfig(CPU ID)
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x05 0x05 0xa1 0x00 0x00 0x00 0x00
Response: 57 01 00 40 a9 06 03 00
-------------------------------------
PECI RdIAMSR(IA32_PLATFORM_ID)
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x05 0x05 0xb1 0x00 0x00 0x00 0x00
Response: Unable to send RAW command (channel=0x0 netfn=0x2e lun=0x0 cmd=0x40 rsp=0xa5): Unknown (0xA5)
-------------------------------------
CPU Package Configuration Read
Target: ME [0x2c]

Request :2e 0x42 0x57 0x01 0x00 0x00 0x00 0x00 0x00 0x03
Response: 57 01 00 a9 06 03 00
-------------------------------------
PECI RdPCIConfigLocal()
Target: ME [0x2c]

Request :2e 0x40 0x57 0x01 0x00 0x30 0x05 0x05 0xe1 0x00 0x00 0x00 0x00
Response: Unable to send RAW command (channel=0x0 netfn=0x2e lun=0x0 cmd=0x40 rsp=0xa5): Unknown (0xA5)
-------------------------------------
CPU PCI Configuration Read (Pre-Boot)
Target: ME [0x2c]

Request :2e 0x44 0x57 0x01 0x00 0x00 0x00 0x00 0x00 0x00 0x03
Response: Unable to send RAW command (channel=0x0 netfn=0x2e lun=0x0 cmd=0x44 rsp=0xa5): Unknown (0xA5)
-------------------------------------
CPU IA MSR Read (IA32_PLATFORM_ID)
Target: ME [0x2c]

Request :2e 0x46 0x57 0x01 0x00 0x00 0x00 0x17 0x00 0x04
Response: Unable to send RAW command (channel=0x0 netfn=0x2e lun=0x0 cmd=0x46 rsp=0xab): Unknown (0xAB)
-------------------------------------
Get CPU and Memory Temperature
Target: ME [0x2c]

Request :2e 0x4b 0x57 0x01 0x00 0x0f 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff
Response:
-------------------------------------
Get PSU Configuration
Target: ME [0x2c]

Request :2e 0xd8 0x57 0x01 0x00 0x00
Response: 57 01 00 00 b0 b2 b4 b6 b8 ba bc be
-------------------------------------
Get Host CPU Configuration
Target: ME [0x2c]

Request :2e 0xea 0x57 0x01 0x00 0x00
Response: 57 01 00 90 0f 00 04 25 25 24 23 00 00 00 00 00 21 01 e0 10 10 08 00 00
````
