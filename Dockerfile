FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Copy package.json
COPY package*.json ./

# Install node package management
RUN npm install

# Copy
COPY . .

# Expose port 3000
EXPOSE 3000

# Run app.js 
CMD [ "node", "app.js" ]
