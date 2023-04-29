#~/bin/bash

##############################
#       Example 1            #
##############################

for n in {1..10}
do 
    echo $n
    sleep 1
done

echo "This is outside of the for loop."

##############################
#       Example 2            #
##############################

for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
done


