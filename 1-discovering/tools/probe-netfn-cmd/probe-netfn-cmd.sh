#!/bin/bash

ICMD="ipmitool -I lan -H 172.24.254.128 -U ADMIN -P ADMIN raw "

for i in `seq $[0x0] 2 $[0x3f]`; do
  for j in `seq 0 255`; do
    RAW="0x`printf %x $i` 0x`printf %x $j`"
    echo -n "$RAW |"
    $ICMD $RAW 2>&1 | cut -d: -f2- 
  done
done | grep -v Invalid
