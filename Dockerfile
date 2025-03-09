# Use the official NGINX image from Docker Hub
FROM --platform=linux/amd64 nginx:latest

# Copy the HTML file and image to the NGINX server's default directory
COPY index.html /usr/share/nginx/html/
COPY image.png /usr/share/nginx/html/

# Expose port 80 so we can access the web page
EXPOSE 80

# Command to run NGINX in the foreground (default)
CMD ["nginx", "-g", "daemon off;"]
