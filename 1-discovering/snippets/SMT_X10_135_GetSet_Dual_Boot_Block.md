````
Raw: 0x30 0x70 0x68
Param: See below

Filename: SMT_X10_135.bin version: 1.35 Date: 03-14-2014

     5. ipmitool -I lan -H <IP> -U ADMIN -P ADMIN raw 0x30 0x70 0x68 0x1 0x2
        (Change to boot block 2, and power off the system.)

     7. After finishing the recovery, change back to boot block 1 by command.
        (ipmitool -I lan -H <IP> -U ADMIN -P ADMIN raw 0x30 0x70 0x68 0x1 0x1)
````
