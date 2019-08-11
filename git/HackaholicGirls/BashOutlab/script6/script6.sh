readarray a < $2 
len=${#a[@]}
#for c in ${a[@]}; do
#               temp="${c^}"
#                a[$len]=$temp
#                len=$(( $len + 1 ))
#        done
while read line; do
	for word in $line ;do
		flag=0
		for c in ${a[@]}; do
	#	if [ "$word" == "$c" ]; then
			shopt -s nocasematch
			case "$word" in
			$c ) printf "bleep "  >> output
			flag=1 ;;
			esac
	#	fi
		done
		if [ $flag -eq 0 ]; then
			printf "%s " $word >> output
		fi
	done
	echo "" >> output
done < $1
