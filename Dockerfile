# FROM ubuntu:latest
# CMD ["echo","Hello World"]
FROM node:latest

WORKDIR /src

COPY package.json package-lock.json /src/

RUN npm install
COPY . /src

EXPOSE 3000
CMD ["npm","start"]





#  docker build -t my_image .   // creating an image
# docker images // to show all the images avaible in the container
# docker run -it  my_image // to run the image command in intractive manner
#  npx express-generator express-app // docerising node application