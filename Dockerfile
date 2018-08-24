FROM node:8.11.4
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i --unsafe-perm
COPY . .
EXPOSE 3000
CMD ["node", "./bin/www"]
USER node