#This script will Print Check Even Num
for I in {1..20}; do
    if [ $(expr $I % 2) -ne 0 ]; then
        echo "$I is Odd"
    else
        echo "$I is Even"
    fi
done
