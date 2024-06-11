# Stage 1: Build the React application
FROM node:14-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the React application using Nginx
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
