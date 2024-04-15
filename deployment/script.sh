#! /bin/bash

# kill the old container process - stopped & then removed
docker stop flaskapp
docker remove flaskapp
# pull fresh image
docker pull davidson139/ceg3120project4:latest
# run new container by name, with restart automagic
docker run -d -p 80:5000 --name flaskapp --restart always davidson139/ceg3120project4:latest
