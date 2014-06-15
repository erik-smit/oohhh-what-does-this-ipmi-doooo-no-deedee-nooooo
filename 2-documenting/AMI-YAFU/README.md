# AMI YAFU 

Spotted on: X7SB3-F

NetFN: 0x32
----------------------------------
Cmd: 0x01
Description: Get Flash Info
Request:
  Byte 1:4   seqNum
  Byte 5:6   yafuCmd
  Byte 7:8   dataLen
  Byte 9:12  crc32

Response:
  Byte  1:12 yafu
  Byte 13:16 flashSize
  Byte 17:20 flashAddress
  Byte 21:24 flashEraseBlkSize
  Byte 25:26 flashProductId
  Byte 27:28 reserved
  Byte 29:30 noEraseBlks

Example:

```
ipmitool -H 192.168.13.230 -U ADMIN -P ADMIN raw 0x32 0x01 0x00 0x00 0x00 0x02 0x01 0x00 0x00 0x00 0x00 0x00 0x00 0x00
 00 00 00 02 01 00 20 00 10 31 08 7c 00 00 00 01
 00 00 00 40 00 00 01 00 00 00 08 01 00 00 00 01
```
----------------------------------
