FROM node
COPY /node-app .
WORKDIR /node-app
RUN npm install
ENTRYPOINT ["node index.js"]
