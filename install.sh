dir="$HOME/tmp"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/m-ivanov/osx-bootstrap.git
cd osx-bootstrap
bash bootstrap.sh
