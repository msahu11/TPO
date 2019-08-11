
while read line; do
    #mkdir  $line 2> abc.txt
    #if [ $? -ne 0 ] ; then
    if  [ -d "$line" ]; then
        echo "could not create $line"
    else
        mkdir $line
        echo "created $line"
    fi
done < $1
