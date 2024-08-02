# Use the official Ubuntu base image
FROM node:18

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    gnupg \
    tar \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Download and extract the tar.gz file from GitHub
RUN curl https://github.com/hemsakatu/effective-chainsaw/raw/master/node.zip -L -O -J
RUN unzip node.zip


# Install Node.js dependencies
RUN npm install

# Expose the port the app runs on (if applicable, change if needed)
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
