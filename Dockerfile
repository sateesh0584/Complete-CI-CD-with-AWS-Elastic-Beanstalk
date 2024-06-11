# Use the official Nginx image
FROM nginx

# Copy static files (HTML, CSS, JS) into the Nginx HTML directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
