
contador=0

contador=$((contador + `ls -l $1*.txt | wc -l`))

rm $1*[.txt]

echo "Has eliminado $contador ficheros"
