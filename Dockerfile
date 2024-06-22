#This is better in order to improve build speed, but both will give the same the result
#Here if there is code updates often, but not the dependencies, the copy and RUN npm install will not be invalidated
FROM node
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . . 
EXPOSE 9981
CMD ["node","app.js"]
#FROM node
#WORKDIR /app
#COPY . . 
#RUN npm install
#EXPOSE 9981
#CMD ["node","app.js"]

