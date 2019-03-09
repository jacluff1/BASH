declare -a packages="numpy pandas scipy matplotlib sklearn tensorflow"

pip install --upgrade pip
pip3 install --upgrade pip

printf "\ngetting python2 and python3 packages and upgrades...\n"
for i in ${packages[@]}; do
    printf "\ninstalling/upgrading $i"
    pip install --user -U $i
    pip3 install --user -U $i
    done
