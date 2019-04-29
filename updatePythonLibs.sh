declare -a packages="ipython numpy pandas scipy matplotlib sklearn tensorflow requests torch torchvision keras scikit-image"

# navigate to PythonFiles
cd $HOME/PythonFiles

# activate virtual environment
source venv/bin/activate

pip install --upgrade pip
# sudo -H pip3 install --user --upgrade pip
# pip3.7 install --user --upgrade pip

# printf "\ngetting python2 and python3 packages and upgrades...\n"
printf "\ngetting python3.6 packages and upgrades"
# printf "\ngetting python3.7 packages and upgrades...\n"
for i in ${packages[@]}; do
    printf "\ninstalling/upgrading $i"
    # pip install --user -U $i
    pip3 install -U $i
    # pip3.7 install --user -U $i
    done
