#!/bin/bash
TOTAL_MEM=$(free -m | grep -i mem | awk -F " " '{print $2}')
TOTAL_AVL=$(free -m | grep -i mem | awk -F " " '{print $7}')
USED_MEMORY=$(expr $TOTAL_MEM - $TOTAL_AVL)
X=$(echo "scale=2; $TOTAL_AVL / $TOTAL_MEM" | bc | tr -d '-')
echo "The Total memory in the machine is ${TOTAL_MEM}MB and current utilization is ${X}MB"
CURRENT_UTIL_PER=$(expr 100 -$x)
#if [ $X -lt 10 ];
if [[$X <= 10]]; then
    echo "Memory is utilized more than 90"
else
    echo "Current Memory is utilized ${CURRENT_UTIL_PER}% and with the limits."
fi
