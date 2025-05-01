# qclone

`qclone` is my dev productivity tool to quickly clone any repo with opinionated settings, opening code editor and setting up a very permissive dev container to build, test and debug in various distros and isolated environments.

## Setup

```sh
# Create repository root folder. It can be any directory
mkdir ~/GithubRepos
# Clone under root folder for clean structure
git clone https://github.com/elginas/qclone .maintenance
# Add qclone to PATH. In my case it is a symlink to ~/.local/bin
cd ~/.local/bin
ln -s ~/GithubRepos/.maintenance/qclone
# Build Docker images
cd ~/GithubRepos/.maintenance
./build_image.sh
# Change ROOT_DIR variable to root folder in qclone python script using any text editor
# Change .password file text to any other value.
```

## Running

Clone a shallow repository and open VSCode automatically:

```sh
qclone clone https://github.com/elginas/qclone
```

Find out about other useful commands:

```sh
qclone --help
```

## Security

It is primarily intended to run trusted repositories because `sudo` has no password security enabled for convenience. There are no resource limitations or network restrictions either. The code isn't tested thoroughly, made for my specific use case only and is meant for development purposes only.
