# install git
printf "\ninstalling git...\n"
sudo apt-get install git-core

# ask for git username
printf "What is git your username?\n"
read username

# ask for git email
printf "What is your git email?\n"
read email

# set up git settings
git config --global user.name $username
git config --global user.email $email
