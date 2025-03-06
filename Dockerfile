# Use the official Node.js image from Docker Hub
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

#copy the package.json and package-lock.json files
COPY package*.json ./
#install the dependencies
RUN npm install

#copy the rest of the application files
COPY . .

#expose the port your app will run on
EXPOSE 5173

#star the application
CMD [ "npm","run","dev" ]
