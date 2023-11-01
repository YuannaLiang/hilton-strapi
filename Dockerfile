FROM node:14.19.1
LABEL authors="nana"

COPY ./ /app
WORKDIR /app
RUN npm config set registry https://registry.npmmirror.com
RUN npm config set sharp_binary_host https://npmmirror.com/mirrors/sharp/
RUN npm config set sharp_libvips_binary_host https://npmmirror.com/mirrors/sharp-libvips/
RUN npm install
RUN npm run build
EXPOSE 1337

CMD npm start
