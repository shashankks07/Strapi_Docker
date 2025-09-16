FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (but NOT node_modules)
COPY package*.json ./

# Install dependencies INSIDE container
RUN npm install --legacy-peer-deps

# Copy project files (excluding node_modules)
COPY . .

# Build Strapi (optional for production)
RUN npm run build

# Expose Strapi port
EXPOSE 1337

CMD ["npm", "run", "develop"]
