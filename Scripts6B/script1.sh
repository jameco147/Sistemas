
x=$1

for i in $(cat nombres.txt) ;do
    x=$1
    mkdir $i
    cd $i
    while [ $x -gt 0 ]; do	
	mkdir personal$x
	x=$((x-1))
    done
    cd ..
done
