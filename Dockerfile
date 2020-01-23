FROM nginx:1.17-alpine

FROM nginx
EXPOSE 80
WORKDIR /app
COPY ./build /usr/share/nginx/html
