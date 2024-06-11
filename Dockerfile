# Use the official Nginx image
FROM nginx

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files (HTML, CSS, JS, etc.) into the Nginx HTML directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
