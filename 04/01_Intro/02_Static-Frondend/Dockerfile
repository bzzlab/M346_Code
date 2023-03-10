# Pull nginx
FROM nginx
# Copy the Nginx config
COPY tierpraxis_html/ /usr/share/nginx/html/
# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
