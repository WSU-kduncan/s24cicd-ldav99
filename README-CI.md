#Part 1

- CI Project Overview
  - So for this project I decided to use nginx again. I had used it for the last project and their image on dockerhub had good documentation. 
- Run Project Locally
  - how to install docker + dependencies (WSL2, for example)
      - To install Docker I followed this article https://docs.docker.com/engine/install/ubuntu/. It had me uninstall any potentially conflicting packages. Then I had to run a couple of commands to setup Dockers apt repository. After that I ran ```sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin``` to get the latest version and all its extras, then ran ```sudo docker run hello-world``` to make sure it worked.
  - how to build an image from the `Dockerfile`
    - I followed nginx's guide for this so I first made my docker file which contained 2 simple lines telling it to grab nginx and copy my index.html file to nginx's html folder. After that I ran ```docker build -t some-content-nginx . ``` to build the image. I then made sure it actually built by running ``` docker image ls```.
  - how to run the container
    - To run the container and expose it to an available port I ran ```docker run --name some-nginx -d -p 8080:80 some-content-nginx``` . Again to check that it worked I ran ``` docker container ls ```
  - how to view the project running in the container (open a browser...go to IP and port...)
    - To see my project running I went to my prowser and typed in localhost/8080 and there was my webpage.
