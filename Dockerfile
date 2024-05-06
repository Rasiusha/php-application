# Use an official PHP runtime as the base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP application code into the container
COPY . /var/www/html

# Install any dependencies your PHP application requires
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Expose port 80 to allow external connections to the web server
EXPOSE 80

# Define the command to run when the container starts
CMD ["apache2-foreground"]
