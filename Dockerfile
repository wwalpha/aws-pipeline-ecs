FROM node:10.16.0-alpine

WORKDIR /usr/src/app
COPY . .
RUN yarn install

EXPOSE 80

CMD ["npm", "start"]
