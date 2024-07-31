# rl-vcmi

## Submodules
Project based on [vcmi](https://github.com/vcmi/vcmi.git) and use it as a submodule, to clone out repo one need to
```
git clone https://github.com/vcmi/vcmi.git
git submodule init
git submodule update
```

## Docker
### Linux
```
sudo apt install -y docker docker-compose bash
sudo groupadd docker
sudo usermod -aG docker $USER
```
Also you may install Docker Desktop
#### To build the container:
```
cd rl-vcmi/docker
docker compose build
```
