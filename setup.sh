# 14.04 only: add PPA for FFmpeg
# Not required for 15.04+
sudo add-apt-repository ppa:mc3man/trusty-media --yes

# Update/upgrade
sudo apt-get update --yes && sudo apt-get upgrade --yes

# Install:
# Node/NPM
# Git
# node-canvas dependencies (Cairo, Pango, libgif, libjpeg)
# FFmpeg
sudo apt-get install git nodejs npm \
libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev libpng-dev build-essential g++ \
ffmpeg \
--yes

# Install Redis if you plan to use it to share rendering among multiple processes/servers
# If you don't need to handle multiple users, you can skip this step
sudo apt-get install redis-server --yes

# Fix nodejs/node legacy binary nonsense
sudo ln -s `which nodejs` /usr/bin/node

# Check the version of Node
node -v

# If the installed Node version is >= v0.11.2, you can skip the next step
# If it's < v0.11.2, upgrade Node to the latest stable version
# If you use this method, you'll probably need to reconnect afterwards
# to see the new Node version reflected
sudo npm install -g n
sudo n stable

# Clone the audiogram repo
git clone https://github.com/wpr-ttbook/audiogram
cd audiogram

# Install local modules from NPM
npm install

# If this worked, you're done
# If you get an error about `make` failing,
# you may need to ensure that node-gyp is up-to-date
# You may even need to run this command twice, because computers
sudo npm install -g node-gyp

# If you had to update node-gyp, try again
npm install
