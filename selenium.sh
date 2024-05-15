sudo apt-get update
sudo apt-get upgrade

sudo apt-get install software-properties-common
sudo apt-get install build-essential unzip libxi6 libssl-dev libffi-dev python3-pip python3-venv xvfb libgconf-2-4 python3-pip -y
pip3 install selenium

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb -y

wget https://storage.googleapis.com/chrome-for-testing-public/124.0.6367.201/linux64/chromedriver-linux64.zip

unzip chromedriver-linux64.zip 

sudo mv chromedriver-linux64 /usr/bin/chromedriver
