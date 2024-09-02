Question 1

a.
1. Existing quotes.txt file

2. Create new file using touch

3. Remove empty lines : done using grep
grep . quotes.txt 
Removes blank lines not including lines with spaces 
(ref:[Serverfault](https://serverfault.com/questions/252921/how-to-remove-empty-blank-lines-from-a-file-in-unix-including-spaces?newreg=3c036c1fb18a466d986925c2b61e258a))

3. Append the changes into another file
file1 > newfile 
Appends content from one file to another, instead of a file i have placed the grep command to perform the task and append it directly to the new file
(ref: [StackOverflow](https://stackoverflow.com/questions/4969641/how-to-append-one-file-to-another-in-linux-from-the-shell) )


------------------------------------------------------------------------------------------------------------------------------------------------------


b. 
1. Created a new file called quotes_rdup.txt
2. grep alone cannot remove duplicate files so i used sort, could also use 'uniq'
3. sort -u : removes all duplicate lines from the file and appends it into a new file called quotes_rdup.txt
sort -u quotes_empty.txt > quotes_rdup.txt
(ref: [StackExchange](https://unix.stackexchange.com/questions/76049/what-is-the-difference-between-sort-u-and-sort-uniq))


------------------------------------------------------------------------------------------------------------------------------------------------------



d. 
List all the words in the file that starts with ‘s’ and doesn’t follow by ‘a’ 
1. grep -o prints only that word in the line which matches the pattern
2. \b ensures that the whole word is matched
3. s\w*[^a] : starts with s, \w* how many letters in the word. ^a should not have an a

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


2.b

1. This script generates a random account number that meets certain criteria:
2. The account number should not follow a Fibonacci-like sequence.
3. The account number should contain digits that are repeated more than three times.

4. is_fibo(): Checks if a string of digits follows a Fibonacci-like sequence.
5. is_repeated_digits():Checks if any digit in the string is repeated more than three times.
6. account_number_generator(): Generates a random account number that satisfies the above criteria.

7. is_fibo(str):Input: A string representing a number.
    Output: Returns 0 if the number follows a Fibonacci-like sequence, otherwise 1.
    Logic:
    Converts the input string into individual digits and checks if any sequence within the string follows a pattern where each number is the sum of the previous two numbers (like in the Fibonacci sequence).

8. is_repeated_digits(str):
    Input: A string representing a number.
    Output: Returns 0 if any digit in the string is repeated more than three times, otherwise 1.
    Logic:
        Iterates through each digit from 0 to 9, counts its occurrence in the input string, and checks if the count exceeds three.

9. account_number_generator():
    Output: Prints a valid random account number.
    Logic:Generates a random account number of length between 12 and 14 digits (inclusive). The     number:
    Starts with a random non-zero digit.
    Fills the remaining digits with a random sequence.
    Validates the generated number against is_fibo and is_repeated_digits functions.
    If both conditions are satisfied, the number is printed.


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


3.a

1. The script is a simple loop that performs the following steps:
2. Lists all directories: It uses the */ pattern to match only directories (excluding files) in the current working directory.
3. Prints the names: For each directory, it prints its name to the console.


------------------------------------------------------------------------------------------------------------------------------------------------------


3.b

1. Finds all Directories: It uses the find command to locate all directories (-type d) at the first level (-maxdepth 1) of the current directory.
2. Calculates Directory Sizes: For each directory found, it uses the du -sh command to calculate and display its size in a human-readable format (like K, M, G).
3. Sorts by Size: The output is then sorted in ascending order by size using the sort -h command.



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


4.b

1. Loops Through a Range: It uses a for loop to iterate over numbers from 1 to 50.
2. Creates Files: For each number in the loop, it creates an empty file with the name temp<b>.sh, where <b> is the current number in the loop.


------------------------------------------------------------------------------------------------------------------------------------------------------


4.c

1. Loops Through a Range: Uses a for loop to iterate over numbers from 1 to 25.
2. Renames Files: For each number in the loop, it renames a file from temp<a>.sh to temp<a>.txt, where <a> is the current number in the loop.