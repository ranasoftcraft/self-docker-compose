## From nginx:alpine with jwt
FROM ghcr.io/max-lt/nginx-jwt-module:v3.4.0
LABEL author="sandeep.rana(aimhigh.excel@gmail.com)"


## Create the directory for the PID file
RUN mkdir -p /run/nginx

## Get ranasoftcraft.co.in 
RUN apk add git

RUN git clone https://github.com/ranasoftcraft/ranasoftcraft.co.in-2.git

RUN cp -r ranasoftcraft.co.in-2/public/ /usr/share/nginx/html/


## copy nginx.conf.template
COPY nginx.conf.template /etc/nginx/nginx.conf.template

## Start Nginx
STOPSIGNAL SIGTERM
CMD ["/bin/sh" , "-c", "envsubst '$${jwt_secret}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]