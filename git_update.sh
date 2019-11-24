# NOTE: this script is to check repo status and update if necessary. This script is particularly repos cloned using SSH urls

# TODO: make sure that there is 1 argument provided, its ithe commit message
message=$1

# function to check up to date status
UP_TO_DATE () {
    status=$(git status)
    if [[ "${status[@]^^}" =~ "IS UP TO DATE" ]]; then
        echo True;
    else
        echo False;
    fi
}

# function to check if there are un-tracked files
UNTRACKED_FILES () {
    x=$(git status)
    if [[ "${x[@]^^}" =~ "UNTRACKED FILES" ]]; then
        printf "WARNING:\tUNTRACKED FILES!!!\nterminating\n"
        exit 1;
    else
        echo $1
    fi
}

if [ ${#@} == 0 ]; then
    message="Getting ready to up update with master IOR remote and push changes";
else
    message="$1";
fi

# commit local changes with message
git add .
git commit -m "$message"
# if there are any untracked files, terminate and add them manually
UNTRACKED_FILES

# determine branch being worked out of
branch=$(git symbolic-ref --short HEAD)
# if not on the master branch, make sure and pull from master first
if ! [ $branch == master ]; then
    git checkout master
    git pull
    git checkout $branch
    x=$(git merge master)
    # if there are merge conflicts, terminate with message
    if [[ "${x[@]^^}" =~ "CONFLICT" ]]; then
        printf "WARNING:\tMERGE CONFLICTS WITH MASTER; RESOLVE BEFORE CONTINUTING!!!\nterminating\n"
        exit 2;
    fi;
fi

# if local not up-to-date, update with remote first
if [ $(UP_TO_DATE) == False ]; then
    printf "CHECK:\tNOT UP TO DATE; PULLING FROM REMOTE...\n"
    x=$(git pull)
    # if there are merge conflicts, terminate with message
    if [[ "${x[@]^^}" =~ "CONFLICT" ]]; then
        printf "WARNING:\tMERGE CONFLICTS WITH REMOTE; RESOLVE BEFORE CONTINUING!!!\nterminating\n"
        exit 3;
    fi;
fi

# after making sure local is up-to-date; push changes
git push
