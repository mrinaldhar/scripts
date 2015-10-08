# For when security updates to Mac OSX break homebrew functionality, 
# run this to get a working homebrew again. 


sudo chown $(whoami):admin /usr/local
xcode-select --install
cd $(brew --prefix)
rm Library/Formula/argp-standalone.rb
rm Library/Formula/cocot.rb
git fetch origin
git reset --hard origin/master
brew update
brew upgrade
