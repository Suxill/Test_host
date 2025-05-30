FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML content to the container's Nginx directory
COPY html/ /usr/share/nginx/html
