# syntax=docker/dockerfile:1
FROM node:19-bullseye
ENV NODE_ENV=production
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/DogeNetwork/v4

# Change directory to the cloned repository
WORKDIR /app/v4

# Install dependencies
RUN npm install

# Expose port 8000
EXPOSE 8000

# Start the application
CMD ["npm", "start"]
