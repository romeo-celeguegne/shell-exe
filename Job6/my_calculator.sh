if [ $2 == * ]
then
	echo somme =$(($1 * $3))
elif [ $2 == + ]
then
	echo somme =$(($1 + $3))
elif [ $2 == - ]
then
	echo somme =$(($1 - $3))
elif [ $2 == / ]
then
	echo somme =$(($1 / $3))
fi
