# FoodieSave

## Installation
### 1. Checkout the project
### 2. Change the current directory to the project
```bash
cd FoodieSave
```
### 3. Build the image
```bash
docker-compose build
```
### 4. Start the container
```bash
docker-compose up -d
```
### 5. Open browser and go to the http://localhost:3000
### 6. Use the following command to stop the container
```bash
docker-compose down
```

## Adding dependencies
### 1. Connect to container's console
```bash
docker container exec -it nodejs /bin/ash
```
### 2. Use the npm to install all needed modules
```bash
npm install *module*
```
