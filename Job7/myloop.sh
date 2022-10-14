cpt=1
while [ $cpt -le 10 ]
do
	echo "Je suis un script qui arrive à faire une boucle $cpt"
	cpt=$((cpt+=1))
done
