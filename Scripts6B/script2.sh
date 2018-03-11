suma=0
contador=0

for i in $(cat precipitaciones.txt | awk '{print $2}'); do
    suma=$((suma + i))
    contador=$((contador + 1))
done

media=$((suma/contador))
echo "La suma es $suma y la media es $media"
    
