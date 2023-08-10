FROM node:18-alpine
# Add a work directory
WORKDIR /app

# Copy app files
COPY . .

# Cache and Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start the app
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh
ENTRYPOINT [ "sh", "/app/run.sh" ]
