#! /bin/bash

# kill the old container process - stopped & then removed
docker stop project4p2
docker remove project4p2
# pull fresh image
docker pull davidson139/ceg3120project4:latest
# run new container by name, with restart automagic
docker run -d -p 8080:80 --name project4p2 --restart always davidson139/ceg3120project4:latest
