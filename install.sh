# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

brew install node

# https://github.com/isaacs/nave
npm install -g nave

# https://github.com/rupa/z
mkdir -p ~/util/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/util/z/z.sh
chmod +x ~/util/z/z.sh

cd ~/util
git clone git://github.com/dronir/SpotifyControl.git

cd "$(dirname "$0")"
./sync.sh