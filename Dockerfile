FROM nginx:alpine

RUN apk add --no-cache git

# Clear default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Clone the repo to a temp folder
RUN git clone https://github.com/Suxill/Test_host.git /tmp/repo

# Copy the HTML contents to the actual Nginx root
RUN cp -r /tmp/repo/html/* /usr/share/nginx/html

