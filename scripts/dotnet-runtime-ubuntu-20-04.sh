#!/usr/bin/env bash

#from https://docs.microsoft.com/en-us/dotnet/core/install/

## get curl and wget to fetch from web.
sudo apt install curl
sudo apt install wget

# add the microsoft package signing keys.
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# install the aspnetcore runtime
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-5.0 && \
  sudo apt-get install -y dotnet-runtime-5.04
