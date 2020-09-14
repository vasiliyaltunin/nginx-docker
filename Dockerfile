FROM alpine:3.12

# install packages
RUN apk add --no-cache --upgrade nginx
RUN mkdir -p /run/nginx
RUN mkdir -p /etc/nginx
RUN mkdir -p /var/www

COPY nginx.conf /etc/nginx/
COPY index.html /var/www

CMD ["nginx", "-g", "daemon off;"]
