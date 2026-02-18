#base image

FROM node:20-alpine

#create work dictionary

WORKDIR /app

#copy package.json and package-lock.json

COPY package*.json ./

#Install dependencies

RUN npm i

#copy all files

COPY . .
#expose port

EXPOSE 4000 

#run the server

CMD ["npm", "start"]
