#!/bin/bash
TOTAL_MEM=$(free -m | grep -i mem | awk -F " " '{print $2}')
TOTAL_AVL=$(free -m | grep -i mem | awk -F " " '{print $7}')
USED_MEM=$(expr $TOTAL_MEM - $TOTAL_AVL)
echo "The total memory In the machine is ${TOTAL_MEM}MB and Current Utilization is ${USED_MEM}"
X=$(echo "scale=2; $TOTAL_AVL / $TOTAL_MEM" | bc | tr -d '.')
echo "The free memory percentage is ${X}%."
CURRENT_UTIL_PER=$(expr 100 -$X)
if [ $X -lt 10 ]; then
    echo "Memory is Utilized more than 90%"
else
    echo "Current memory Utilization is ${CURRENT_UTIL_PER}% and within the limits."
fi

#using binary calculator instead of expr
#echo "scale=2; $TOTAL_AVL / $TOTAL_MEM" | bc
#echo "scale=2; $TOTAL_AVL / $TOTAL_MEM" | bc | tr -d '.'
