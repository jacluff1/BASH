cd $HOME/DATA_SCIENCE_ASSIGNMENTS
git add .
printf "\nWhat commit message would you like?\n"
read message
git commit -m $message
git push origin master
cd $HOME
