dir="$1/*"
count=0
for file in $dir; do
	if [ ! -d "$file" ]; then
		while read line; do
			if [ "$line" != "" ] ; then
				count=$(( $count + 1 ))
			fi 
		done < $file
	fi
done

echo  $count 
