FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy current directory contents to /app in the container
COPY . /app

# Update package lists
RUN apt-get update

# Install necessary packages
RUN apt-get install -y \
    netcat-openbsd \
    fortune-mod \
    cowsay \
    && rm -rf /var/lib/apt/lists/*

# Make wisecow.sh executable
RUN chmod +x /app/wisecow.sh

# Expose the port the app will run on
EXPOSE 4499

# Set the command to run the script
CMD ["./wisecow.sh"]
