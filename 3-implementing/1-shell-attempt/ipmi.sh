#!/bin/bash -e

IRAW="sudo ipmitool"

while IFS=\| read IC PROTOCOL TEXT CMD PROCESS; do
  if echo $IC | grep -vq ^\# ; then
    case $IC in 
    ME*) 
      TARGET="0x2c";;
    *)
      TARGET="0x20";;
    esac
     
    echo '-------------------------------------'
    printf "%s\nTarget: %s [%s]\n\nRequest :%s\nResponse: %s\n" "$TEXT" "$IC" "$TARGET" "`echo $CMD | sed -e 's/0x//'`" "`$IRAW -t $TARGET raw $CMD 2>&1 | $PROCESS | perl -p -e 's/^ *//;s/ *$//;s/[\n\r]/ /'`"
  fi
done < ipmi.cmds
