FROM node:10.16.0-alpine

ENV APP_DIR /src
ENV GIT /ecr-build

WORKDIR $APP_DIR

RUN apt-get -y update

RUN git clone https://github.com/wwalpha/aws-pipeline-ecs.git /ecr-build

RUN mv $GIT/source/* $APP_DIR && \
  cd $APP_DIR && \
  npm install

CMD ["npm", "start" ]
