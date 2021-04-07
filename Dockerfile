# source: https://github.com/reiz/nginx_proxy/blob/master/Dockerfile
FROM ubuntu:20.04

# original author
LABEL author="Robert Reiz <reiz@versioneye.com>"

# vantage6 additions author
LABEL author="Frank Martin <f.martin@iknl.nl>"

# update and upgrade packages
RUN apt update && apt upgrade -y

# install custom NGINX Build
WORKDIR /app

ADD sources.list /etc/apt/sources.list

RUN apt-get update; \
    apt-get install -y libfontconfig1; \
    apt-get install -y libpcre3; \
    apt-get install -y libpcre3-dev; \
    apt-get install -y git; \
    apt-get install -y dpkg-dev; \
    apt-get install -y libpng-dev; \
    apt-get autoclean && apt-get autoremove;

RUN cd /app && apt-get source nginx; \
    cd /app/ && git clone https://github.com/chobits/ngx_http_proxy_connect_module; \
    cd /app/nginx-* && patch -p1 < ../ngx_http_proxy_connect_module/patch/proxy_connect_rewrite_1018.patch; \
    cd /app/nginx-* && ./configure --add-module=/app/ngx_http_proxy_connect_module && make && make install;

EXPOSE 8888

CMD /usr/local/nginx/sbin/nginx