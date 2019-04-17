cd $HOME

printf "\n"
echo '' >> .bashrc
echo '# setting up aliases' >> .bashrc
echo 'alias ipy=ipython' >> .bashrc
echo 'alias jyp=jupyter notebook' >> .bashrc

printf "\nadding lines to .bashrc to automatically change directories to PythonFiles and activate the 'venv' virtual environment...\n"
echo '' >> .bashrc
echo '# automatically activate virtual environment' >> .bashrc
echo 'cd PythonFiles' >> .bashrc
echo 'source venv/bin/activate' >> .bashrc
