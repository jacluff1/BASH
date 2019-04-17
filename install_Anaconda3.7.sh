# https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

bash Anaconda3-2019.03-Linux-x86_64.sh

source ~/.bashrc

conda list

conda install theano
