#To execute docker when Dockerfile is present:
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

# use -it to get a test run menu
docker run -it 5be6e36ace70 npm run test

#start docker-compose
docker-compose up