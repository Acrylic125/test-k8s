FROM node:18-alpine

COPY . /app

WORKDIR /app

RUN ["npm", "install"]

RUN useradd -m myapp

USER myapp

CMD [ "node", "index.js" ]
