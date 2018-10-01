# Dockerfile for 4NXCI

This is a Dockerfile for building [4NXCI](https://github.com/The-4n/4NXCI).
[What is 4NXCI?](https://github.com/The-4n/4NXCI/)

4NXCI docker image serves the purpose of consistent command lines to convert XCI to NSP over multi-platform. And ensure a controlled environment and version which builds 4NXCI tool successfully.

## Usage
There are 2 ways to prepare the docker image.

#### Option 1. Build docker image
```
git clone https://github.com/antonyho/docker-4NXCI.git
cd docker-4NXCI
docker build -t antonyho/xci2nsp .
```

#### Option 2. Pull the docker image from DockerHub
```
docker pull antonyho/xci2nsp
```


### Commands
```
docker run --rm antonyho/xci2nsp [options...] <path_to_file.xci>

Options:  
-k, --keyset             Set keyset filepath, default filepath is ./keys.dat  
-h, --help               Display usage  
--dummytik               Creates dummy tik and cert
```
