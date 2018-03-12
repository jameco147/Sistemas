contador=0
contador2=0
suma=0

for i in $(cat listado.txt | awk '{print $2}'); do
    if [ $i = Windows ];then
	contador=$((contador + 1))
    else
	contador2=$((contador2 + 1))	
    fi   
done



echo "Linux->$contador2"    
echo "Windows->$contador"

