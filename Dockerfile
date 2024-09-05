FROM node:18.20.4

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080
Int.addnames 
CMD [ "node", "index.js" ]
