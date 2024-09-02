# Question 1

# a. Remove empty lines from the file quotes.txt

#create new file using touch
touch quotes_empty.txt

#using grep to remove empty lines and append into new file
grep . quotes.txt > quotes_empty.txt


# b. Remove duplicates and put it in file = quotes_rdup.txt file
touch quotes_rdup.txt
sort -u quotes_empty.txt > quotes_rdup.txt


#c. Count the number of quotes by personality and print them in quotes_byperson.txt
awk -F ' ~' '{print $2}' "quotes_rdup.txt" | sort | uniq -c | sort -nr > "quotes_byperson.txt"


#d List all the words in the file that starts with ‘s’ and doesn’t follow by ‘a’ 
touch quotes_withb.txt
grep -o '\bs\w*[^a]' quotes_empty.txt > quotes_withb.txt