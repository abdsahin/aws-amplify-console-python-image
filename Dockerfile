FROM nikolaik/python-nodejs:python3.8-nodejs12

RUN apt-get update
RUN apt-get install curl 
RUN apt-get install git
RUN apt-get install unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip 
RUN ./aws/install
RUN aws --version