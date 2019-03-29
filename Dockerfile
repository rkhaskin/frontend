FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
# copy from a different phase
COPY --from=builder /app/build /usr/share/nginx/html    
# default command will start nginx
