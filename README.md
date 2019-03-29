#To execute docker (build an image) when Dockerfile is present:
docker build .
#When other file name is present we must specify it:
docker build -f Dockerfile.dev .
# when want to expose port to the container:
docker run -p 3000:3000 03939383heg0
# run with volumnes. 
#where /app is the current directory. DO NOT map node_modules to source directory. Use the container node_modules.Map all others to refernce the outside of container folder. If file chenges, it is updated right away in the browser
docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app 03939383heg0

#run tests by overriding default image command. We have it as 
#CMD ["npm", "run", "start"]
 docker run 5be6e36ace70 npm run test

# run tests and exit
docker run test -- --coverage
# use -it to get a test run menu
docker run -it 5be6e36ace70 npm run test

#start docker-compose
docker-compose up
# build and start
docker-compose up --build


## ways to run tests and auto pick up changes
## 1) run docker-compose up with volumes:
docker-compose up
## from a second terminal find process id:
docker ps
## attach to the process:
docker exec -it 23334444455 npm run test

# attach to the stdin, stdot, stdout the primary process of the container.
# if we type somethng on the terminal, t will be sent to stdin of the 
# primary process
docker attach 424242424234

#run sh command inside a given container and allow stdin input
docker exec -it trr3fw3r3f3 sh