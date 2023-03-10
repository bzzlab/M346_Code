# Pull the minimal Ubuntu image
FROM ubuntu
# Install Nginx
RUN apt-get -y update && apt-get -y install nginx
RUN apt-get -y install nano && apt-get clean
# Copy the Nginx config
COPY default /etc/nginx/sites-available/default
COPY tierpraxis_html/ /usr/share/nginx/html/
RUN ls -al /usr/share/nginx/html/*
# Expose the port for access
EXPOSE 5000/tcp
# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
