FROM node:13
COPY . /app
WORKDIR /app
RUN ls
RUN npm install
COPY . /app
CMD node index.js
EXPOSE 9000
