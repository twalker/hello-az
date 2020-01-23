FROM nginx:1.17-alpine
EXPOSE 80
WORKDIR /app
COPY ./build /usr/share/nginx/html
