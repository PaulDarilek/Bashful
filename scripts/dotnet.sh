#!/usr/bin/env bash

## get curl to fetch from web.
sudo apt install curl

# get the install script from microsoft
# by Default SDK is installed.  Options to ony install runtime are: 
#	--runtime dotnet  --runtime aspnetcore 
curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel Current 

