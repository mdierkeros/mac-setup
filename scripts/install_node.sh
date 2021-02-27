#!/bin/bash

# Resources:
# - [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

# install latest nvm version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# install latest node version
nvm install node

# install global node packages

## node tools
npm install -g npkill
npm install -g live-server
npm install -g nodemon

## typescript
npm install -g typescript
npm install -g ts-node

## angular & rect
npm install -g angular/cli
npm install -g create-react-app
