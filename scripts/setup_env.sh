#download this file with
#curl -k https://raw.githubusercontent.com/jshiv/stencil/master/scripts/setup_env.sh -o setup_env.sh

#install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew install gcc and freetds
brew install gcc
brew install freetds


curl -k https://raw.githubusercontent.com/jshiv/stencil/master/scripts/env_requirements.txt -o env_requirements.txt
#install numpy, scipy, pandas, sklearn, seaborn
sudo pip install -r env_requirements.txt
