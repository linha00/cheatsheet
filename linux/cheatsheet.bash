# .deb files are Debian package tht contains all the necssary files and metadata to install a software

# dpkg stands for Debian Package Manager, and it is the low-level tool used to install, remove, and manage .deb packages

# install .deb file
sudo dpkg -i package_name.deb # -i flag stands for install 

# fix missing dependencies after installing a .deb file
sudo apt --fix-broken install

# remove / uninstall
sudo apt -r package_name # -r flag stands for remove

# list installed packages
dpkg --list


# apt is a higher-level package manager that uses dpkg to manage .deb and also handles things like dependencies automatically
sudo apt install package_name
sudo apt remove package_name
sudo apt update
sudo apt upgrade

# (debug symbols) package is used for debugging purposes. It contains additional information such as symbol tables, which help developers 
# and advanced users troubleshoot and debug MySQL Workbench by using tools like gdb (GNU Debugger). This package is not needed for regular 
# users who simply want to use the software; it's primarily for developers or users who want to debug the software in detail.

