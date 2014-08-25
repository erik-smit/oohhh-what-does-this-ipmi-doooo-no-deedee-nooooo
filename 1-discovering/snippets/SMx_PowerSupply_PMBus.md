````
Raw: 0x06 0x52 0x07 0x78 0x01 0x78 

Question: 
We monitor power supplies in super server 1026T-URF4+ using these IPMI commands: 
ipmitool raw 0x06 0x52 0x07 0x78 0x01 0x78 
ipmitool raw 0x06 0x52 0x07 0x7a 0x01 0x78 

These commands return one byte of hex, which reads 01 when the PSU is operating normally and 48 if the PSU is unplugged. I determined code 48 experimentally, but now we're seeing code 4c in the field, and I don't know what that means. Can you either get a list of these response codes for the PSUs?

Answer:
The STATUS BITS of offset 0x78 in the PWS-703P-1R power supply are as below: 
#7 Not used, default = 0 
#6 Device is off due to PSON or for any reason (eg. Protection) = 1, else 0 
#5 Output OVP = 1, else 0 
#4 Output OCP = 1, else 0 
#3 VIN under voltage = 1, else 0 
#2 OTP = 1, else 0 
#1 Not used, default = 0 
#0 None of the above (Power is good and turned on) = 1, else 0
````

--
Source: http://www.supermicro.com/support/faqs/faq.cfm?faq=13424
