contador=0
contador2=0
procesos=0
procesos2=0
v1=`cat listado.txt | wc -l`


for i in `seq 1 $v1`; do
    v2=`cat listado.txt | head -$i | tail -1 | awk '{print $2}'`

    if [ $v2 = Windows ];then
	contador=$((contador + 1))
	procesos=$((procesos + `cat listado.txt | head -$i | tail -1 | awk '{print $3}'`))
    
    else
	contador2=$((contador2 + 1))
	procesos2=$((procesos2 + `cat listado.txt | head -$i | tail -1 | awk '{print $3}'`))
    fi    
done

echo "Linux->$contador2 $procesos2"    
echo "Windows->$contador $procesos"

