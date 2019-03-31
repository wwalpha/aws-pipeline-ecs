FROM node

RUN apt-get -y update
RUN mkdir /work && cd /work

RUN git clone https://github.com/wwalpha/aws-pipeline-ecs.git ecr-build
RUN cd ecr-build
