# printf "\ninstalling python 2.x.x...\n"
# sudo apt install python
#
# printf "\ninstalling ipython2...\n"
# sudo apt install ipython

printf "\ninstalling python3...\n"
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
tar -xf Python-3.7.2.tar.xz
cd Python-3.7.2
./configure --enable-optimizations
make -j 8
sudo make altinstall
python3.7 --version

printf "\ninstalling ipython3.7...\n"

# install/update library packages
./updatePythonLibs.sh

printf "\ninstalling python3-tk...\n"
sudo apt install python3-tk

# printf "\ninstalling ipython3...\n"
# sudo apt install ipython3
#
# printf "\ninstalling python3-tk...\n"
# sudo apt install python3-tk

# printf "\ninstalling pip2 and pip3...\n"
# # https://packaging.python.org/guides/installing-using-linux-tools/#installing-pip-setuptools-wheel-with-linux-package-managers
# sudo apt install python-pip
# sudo apt install python3-venv python3-pip
