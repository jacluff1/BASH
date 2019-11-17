# NOTE: this script is to give 755 permissions to all scripts. If there is a .git/cofig file in the directory where this script is run, will give permissions through git; othwerwise, will use chmod

# get all shell scripts from parent directory on down
scripts=$(find -iname "*.sh")

# for all the shell scripts found
for script in "${scripts[@]}"; do
    # skip current file
    if [[ "${scripts[@]}" =~ "give_permissions.sh" ]]; then continue; fi
    # if script is in git repo
    if [ -f .git/config ]; then
        # add permissions via git
        git update-index --chmod=+x $script;
    else
        # otherwise add permissions via chmod
        chmod 755 $script;
    fi
done
