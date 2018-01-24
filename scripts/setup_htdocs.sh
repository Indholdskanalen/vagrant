#!/usr/bin/env bash
dir=$(cd $(dirname "${BASH_SOURCE[0]}")/../ && pwd)

mkdir -p $dir/htdocs
cd $dir/htdocs

git clone git@github.com:search-node/search_node.git search_node

git clone git@github.com:itk-os2display/docs.git docs
git clone git@github.com:itk-os2display/admin.git admin
git clone git@github.com:itk-os2display/middleware.git middleware
git clone git@github.com:itk-os2display/screen.git screen

cat <<EOF
Run

  $dir/scripts/install_bundles.sh

to clone bundles needed for development.

EOF