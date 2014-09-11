#!/bin/bash

ICMD="ipmitool -I lan -H 172.24.254.128 -U ADMIN -P ADMIN -t 0x2c raw "

for i in `seq $[0x0] 2 $[0xff]`; do
  for j in `seq 0 255`; do
    RAW="0x`printf %x $i` 0x`printf %x $j`"
    echo -n "$RAW |"
    OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
    if [[ $OUTPUT == Unable* ]]; then
      OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
      if [[ $OUTPUT == Unable* ]]; then
        OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
      fi
    fi
    echo "$OUTPUT"
  done
done | grep -v Invalid
