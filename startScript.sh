printf "\ngetting essential-build...\n"
sudo apt-get install essential-build

printf "\ngetting various packages (curl,?)...\n"
sudo apt install curl

# make directories
# printf "\nmaking directory $HOME/PythonFiles...\n"
# mkdir $HOME/PythonFiles

# export BASH directory to .bashrc
export PATH="$PWD:$PATH"

# set permissions for all scripts in the bash directory
printf "\nsetting permissions for all scripts in BASH directory...\n"
for f in $PWD/*.sh; do
	chmod 755 $f
done

# install python (Linux 18.04 only comes with python3 native)
./install_python.sh

# install pip
./install_pip.sh

# install jupyter
./install_jupyter.sh

# install/update library packages
./updatePythonLibs.sh

# set autoreload for ipython
./python_autoreload.sh

# install google-chrome
./install_chrome.sh

# install Atom text-editor
./install_atom.sh

# install skype
./install_skype.sh

# install git
./install_git.sh