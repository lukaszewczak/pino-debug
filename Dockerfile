FROM node:slim
RUN mkdir -p /home/node/pino
WORKDIR /home/node/pino
COPY package.json /home/node/pino
RUN npm install
COPY . /home/node/pino
CMD ["npm","test"]
