FROM node:10-alpine
WORKDIR /node/app
COPY package*.json ./
RUN npm install
COPY . .
RUN ls
EXPOSE 3000
CMD ["node", "server.js"]