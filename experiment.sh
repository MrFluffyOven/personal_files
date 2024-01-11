echo
echo "----------------------"
echo " Prep for Treble_AOSP "
echo "   by MrFluffyOven    " 
echo "   With MFO Choices   " 
echo "----------------------"
echo


echo "--> Installing Snap & Curl" 
sudo apt-get install snap
snap install curl
echo 

echo "--> Installing Git & Repo" 
sudo apt-get install git-all  
sudo apt-get install repo
sudo apt-get install git-lfs
echo


echo "--> Installing Python 3.11" 
sudo apt-get install python3.11
sudo apt-get install python-is-python3 
sudo apt-get install python3-pip
pip3 install lunch
echo


echo "--> Installing JDK 11"
sudo apt-get install openjdk-11-jdk
echo

echo "--> Installing Gradle 7.2"
snap install gradle --classic
echo 


echo "--> Installing MFO Choices" 
sudo apt-get install unzip
snap install code --classic 
sudo apt-get install gdebi 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb 
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.2.0-linux1/GitHubDesktop-linux-3.2.0-linux1.deb
sudo gdebi GitHubDesktop-linux-3.2.0-linux1.deb
echo


echo "--> Make Aosp Directory" 
mkdir aosp; cd aosp
echo


echo "--> Clone treble_aosp"
git clone https://github.com/MrFluffyOven/treble_aosp.git - b arrow
echo


echo "--> BUILD"
bash treble_aosp/build.sh . 
echo