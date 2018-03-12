contador=0
contimpar=0

for i in $(cat numeros.txt); do
    if [ $((i % 2)) -eq 0 ];then
	echo "$i es par"
	contador=$((contador+1))
    fi   
done
echo ""
for i in $(cat numeros.txt); do
    if [ $((i % 2)) -ne 0 ];then
	echo "$i es impar"
	contadorimpar=$((contadorimpar+1))
    fi   
done
echo ""



echo "El número total de números pares es $contador y de los impares $contadorimpar"
