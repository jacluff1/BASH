# install virtual environments and set up a virtual environments
printf "\ninstalling venv...\n"
sudo apt install python3-venv
printf "making directory $HOME/PythonFiles...\n"
mkdir $HOME/PythonFiles
printf "setting up virtual environment 'venv' in PythonFiles...\n"
cd $HOME/PythonFiles
python3 -m venv venv
source venv/bin/activate
cd $HOME
