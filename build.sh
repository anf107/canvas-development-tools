#!/bin/bash



# do this FIRST, before running CODES.sh; the script does something else entirely
curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install nodejs

# next, add the ppa:brightbox/ruby-ng and install Ruby 2.1
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install ruby2.1 ruby2.1-dev

curl -O https://raw.githubusercontent.com/FreedomBen/canvas-development-tools/master/CODES.sh
chmod +x CODES.sh
./CODES.sh --full

# after the setup completes, cd to the canvas root directory, and point your browser to (server):3000
cd ~/canvas-lms
bundle exec rails server
