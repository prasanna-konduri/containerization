# Use an official Nginx base image
FROM nginx:latest

# Set the working directory to the default Nginx HTML folder
WORKDIR /usr/share/nginx/html

# Copy index.html to the default Nginx HTML folder
COPY index.html /usr/share/nginx/html/index.html

# Copy the custom nginx.conf to the default Nginx config location
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
