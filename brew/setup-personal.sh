cd $(dirname $0)

set -e
echo 'Starting personal brew bundle...'
brew tap Homebrew/bundle
brew bundle --file BrewfilePersonal
echo '*** DONE ***'