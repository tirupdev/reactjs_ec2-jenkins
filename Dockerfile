# Step 1: Use official NGINX image
FROM nginx:latest

# Step 2: Clean default content
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy React build output to NGINX web root
COPY build/ /usr/share/nginx/html/

# Step 4: Expose port
EXPOSE 80

# Step 5: Start nginx
CMD ["nginx", "-g", "daemon off;"]
