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
mkdir -p ~/util/ && cd ~/util/
curl --location https://github.com/rupa/z/archive/v1.8.tar.gz | tar xz
mv z-* z
chmod +x ~/util/z/z.sh

cd ~/util
git clone git://github.com/dronir/SpotifyControl.git

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
   curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Git autocomplete
rm -rf ~/.git-completion.bash &>/dev/null
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

cd "$(dirname "$0")"
./sync.sh
