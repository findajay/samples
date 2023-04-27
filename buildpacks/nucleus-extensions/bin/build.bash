#!/usr/bin/env bash
set -eo pipefail

echo "---> Nucleus Extensions  Buildpack"

#ironpdf --version

layers_dir=$1

cat >> "${layers_dir}/launch.toml" <<EOL
[[processes]]
type = "azfunction"
command = ["azfunction"]
args = ["--version"]
default = true
EOL