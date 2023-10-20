#Base image
FROM node:14

#set the working directory
WORKDIR /home/ubuntu/app

#Copy code into the container

COPY . .

#install dependencies

RUN npm install

#install PM2 globally 

RUN npm install -g pm2

# expose port of your application uses

EXPOSE 8000

#Start application with PM2

CMD pm2-runtime start index.js 


