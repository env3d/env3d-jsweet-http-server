FROM centos:latest

RUN yum -y install java-1.8.0-openjdk-headless.x86_64
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y install nodejs
RUN npm install -g --save tsc

RUN mkdir /app; mkdir /app/bin; mkdir /app/www
WORKDIR /app

COPY bin /app/bin
COPY www /app/www
COPY run.sh /app

EXPOSE 8580

CMD ["./run.sh"]

 
