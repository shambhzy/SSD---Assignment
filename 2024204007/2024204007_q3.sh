#a
for dir in */; 
do
	echo "${dir}"
done



#b
find . -maxdepth 1 -type d -exec du -sh {} + | sort -h