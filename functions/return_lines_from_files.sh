# NOTE: this script collects all lines from any number of files provided. its intended purpose is to read simple lists saved in a file where each value is on a new line

# make array to hold values
vals=()

# for each file in user input file names
for x in ${@}; do
    while IFS= read -r line; do
        vals+=($line)
    done < "$x"

# output the value
echo ${vals[@]}
