# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files and install
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Build the app
RUN npm run build

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]
