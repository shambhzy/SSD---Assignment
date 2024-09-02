#a
mkdir temp_activity

#b
for b in {1..50}
do
	touch temp$b.sh
done


#c
for a in {1..25}
do
	mv temp$a.sh temp$a.txt
done



