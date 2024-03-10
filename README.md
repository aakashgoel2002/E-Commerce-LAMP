# E-Commerce LAMP Stack with Docker
This project provides a Dockerfile to set up a LAMP stack (Linux, Apache, MySQL, PHP) for an E-Commerce application.

### Project Description
---
This LAMP stack image is designed to be a development environment for building E-commerce applications. It includes:

- Apache web server: Serves your E-Commerce application files.
- MySQL database server: Stores product information, user data, and other application data.
- PHP: Provides server-side scripting capabilities for your E-Commerce application logic.

### Docker Hub Image
---
The built image is available on Docker Hub: https://hub.docker.com/repository/docker/aakashgoel2002/e-commerce-lamp/

### Usage
---
__1. Pull the E-Commerce LAMP Stack Image:__ 
```bash
docker pull aakashgoel2002/e-commerce-lamp
```
This command will:
- Download the image from Docker Hub if it's not already available locally.
__2. Run the E-Commerce LAMP Stack Container:__ 
```bash
docker run -d --name ecom-lamp -p 80:80 aakashgoel2002/e-commerce-lamp
```
This command will:
- Run the container in detached mode (-d) on port 80 (-p 80:80) and assign the name ecom-lamp.
__3. Access your E-Commerce application:__ 
The default web server port (usually port 80) is exposed by the container. You can access your application in a web browser by visiting http://localhost:80 .
__4. Stop the Container:__ 
```bash
docker stop ecom-lamp
```
__5. Remove the Container:__ 
```bash
docker rm ecom-lamp
```

### Contributing
---
We welcome contributions to this project! Feel free to submit pull requests with improvements or additional features.

