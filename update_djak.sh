# set path variables
lib_path="$HOME/.local/lib/python3.5/site-packages/"
dir_path="$HOME/DJAK/"

# copy entire contents of working directory to the the python site-packages directory
printf "\ncopying library into python site-packages directory...\n"
cp -R $dir_path $lib_path

# update load changes to git
printf "\nuploading changes to github repository...\n"
cd $dir_path
git add .
printf "\nwhat commit message would you like?\n"
read commitM
git commit -m $commitM
git push origin master
