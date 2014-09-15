#!/bin/bash

ICMD="ipmitool raw "

for i in `seq $[0x0] 2 $[0xff]`; do
  for j in `seq 0 255`; do
    RAW="0x`printf %.2x $i` 0x`printf %.2x $j`"
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
