# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache HTTP server
RUN apt-get update && apt-get install -y apache2

# Copy the HTML content into the Apache document root directory
COPY troweld-html /var/www/html

# Expose port 80 to allow outside access to the Apache server
EXPOSE 80

# Start Apache server when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]

