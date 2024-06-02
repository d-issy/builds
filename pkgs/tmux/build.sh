#/bin/bash
set -xe

# environmnet
version=3.4
build_dir=tmux-${version}
archive_file=tmux-${version}.tar.gz

# download
curl -sSfLO https://github.com/tmux/tmux/releases/download/${version}/${archive_file}

# build
tar -xzvf ${archive_file}
cd ${build_dir}

./configure
make

# output
cd ..
mkdir -p build
cp ${build_dir}/tmux build/
