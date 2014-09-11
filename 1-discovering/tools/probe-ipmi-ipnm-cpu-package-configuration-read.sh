#!/bin/bash

ICMD="ipmitool -P ADMIN -t 0x2c raw "

for i in `seq $[0x0] $[0xff]`; do
  INDEX="0x`printf %x $i`"
  RAW="0x2e 0x42 0x57 0x01 0x00 0x00 0x00 0x00 0x00 $INDEX"
  echo -n "PCS Index $INDEX |"
  OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
  if [[ $OUTPUT == Unable* ]]; then
    OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
    if [[ $OUTPUT == Unable* ]]; then
      OUTPUT=`$ICMD $RAW 2>&1 | cut -d: -f2- `
    fi
  fi
  echo "$OUTPUT"
done | grep -v Invalid
