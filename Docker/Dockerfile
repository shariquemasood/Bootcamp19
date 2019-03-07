# Getting base image
FROM ubuntu:latest
MAINTAINER Sharique Masood <sharique.masood@tothenew.com>

# Running update, installing nginx and changing root password
RUN apt-get update && \
    apt-get install -y nginx && \ 
    apt-get install -y curl wget vim net-tools

#COPY Nginx Configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Starting ssh service with pip 1
CMD  ["nginx", "-g", "daemon off;"]

# Exposing ports for nginx and ssh
EXPOSE 80 443 22

