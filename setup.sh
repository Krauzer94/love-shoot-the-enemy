#!/bin/bash
set -euo pipefail
set -x

sudo apt update && sudo apt install -y software-properties-common
sudo add-apt-repository ppa:bartbes/love-stable
sudo apt update && sudo apt install -y love
