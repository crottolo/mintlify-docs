FROM node:14
RUN echo -e "\e[1;33mENVIRONMENT VARIABLES\e[0m"
RUN env
RUN echo "Hello, World!" > /usr/share/nginx/html/index.html
RUN echo "Hello, World about!" > /usr/share/nginx/html/about.html
#
RUN apk add --no-cache nodejs=18 npm
RUN npm install -g mintlify

FROM base AS builder
RUN echo -e "\e[1;33mENVIRONMENT VARIABLES\e[0m"
RUN env

