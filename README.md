# Bashful
**A repository for setting up a Debian/Ubuntu/Raspbian Linux computer with Repositories and .NET**

##Install Stuff
- Install GIT 
```
apt install git
```

## Get Repository and set execute flag on shell scripts.
```
mkdir Source
cd Source
git clone https://github.com/PaulDarilek/Bashful.git
cd Bashful/scripts
chmod +x *.sh
```

- .NET Core SDK
bash dotnet-sdk-ubuntu-20-04.sh

- .NET Core Runtime (not required if SDK installed)
bash dotnet-runtime-ubuntu-20-04.sh

