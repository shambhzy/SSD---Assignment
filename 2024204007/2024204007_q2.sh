# 2a
export LC_ALL=C 
# string=$(head /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()' | head -c 10)
# echo $string




# 2b
is_fibo() {
    local str="$1"
    local length=${#str}


    if [[ "$length" -le 1 ]]; then
        return 1
    fi


    local digits=()
    for ((i=0; i<$length; i++)); do
        digits[i]="${str:i:1}"
    done


    for ((i=0; i<$length-2; i++)); do
        for ((j=i+1; j<$length-1; j++)); do
            local a="${digits[i]}"
            local b="${digits[j]}"
            local c=$((a + b))
            local k=$((j + 1))

            while ((k < length)); do
                if [[ "${digits[k]}" -ne "$c" ]]; then
                    break
                fi
                a="$b"
                b="$c"
                c=$((a + b))
                ((k++))
            done

            if ((k == length)); then
                return 0 
            fi
        done
    done

    return 1  
}


is_repeated_digits() {
    local str="$1"
    for digit in {0..9}; do
        local count=$(echo "$str" | grep -o "$digit" | wc -l)
        if ((count > 3)); then
            return 0
        fi
    done
    return 1
}


account_number_generator() {
    while : ; do

        local length=$((RANDOM % 3 + 12))
        # echo $length
        local first_digit=$(shuf -i 1-9 -n 1)
        # echo "first digit is $first_digit"
        local remaining_digits=$(head /dev/urandom | tr -dc '0-9' | head -c $((length - 1)))
        # echo "last digit is $remaining_digits"
        # echo "acc number $first_digit$remaining_digits"
        local account_number="$first_digit$remaining_digits"
        # echo "new acc $account_number"
        # local account_number=$(shuf -i 1-9 -n $((length - 1)) | tr -d '\n')
        # account_number=$(printf "%0${length}d" "$account_number")


        if ! is_fibo "$account_number" && is_repeated_digits "$account_number"; then
            echo "$account_number"
            return
        fi
    done
}

# Generate and display the account number
account_number_generator
