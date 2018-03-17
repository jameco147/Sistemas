contador=0
if [ -d $1  ];then

contador=$((contador + `ls -l $1*.txt | wc -l`))
rm $1*[.txt]

else
    echo "la ruta no existe"
fi


echo "Has eliminado $contador ficheros"
