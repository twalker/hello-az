# Build stage node:stretch does not have compile error
FROM node:lts as builder
WORKDIR /usr/app
COPY ./package.json .
RUN npm install
COPY . .
RUN npm run build

# Run stage
FROM nginx:1.17-alpine
EXPOSE 80
COPY --from=builder /usr/app/build /usr/share/nginx/html
