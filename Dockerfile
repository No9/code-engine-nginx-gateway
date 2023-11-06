FROM registry.access.redhat.com/ubi9/nginx-120@sha256:dc68bec72590f37a62daf8c8786f3916642a9ea7aeca99aa4e7324adbb596758

COPY site.conf /etc/nginx/nginx.conf
WORKDIR /app/static
COPY index.html ./
CMD ["nginx", "-g", "daemon off;"]
