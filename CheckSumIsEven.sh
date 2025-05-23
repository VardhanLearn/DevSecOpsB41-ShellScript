#The script will Check for Even Number
for I in {1..10}; do
    if [ $(expr $I % 2) -ne 0 ]; then
        echo "$I is ODD"
    else
	echo "$I is EVEN"
    fi
done
