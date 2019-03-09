printf "\ncreating ipython profile and setting autoreload...\n"
ipython profile create
cd $HOME/.ipython/profile_default/
echo '' >> ipython_config.py
echo 'c.InteractiveShellApp.extensions = ["autoreload"]' >> ipython_config.py
echo 'c.InteractiveShellApp.exec_lines = ["%autoreload 2"]' >> ipython_config.py
#echo 'c.InteractiveShellApp.exec_lines.append("print("Warning: disable autoreload in ipython_config.py to improve performance.")")' >> ipython_config.py
cd $HOME
