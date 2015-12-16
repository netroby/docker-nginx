FROM nginx

RUN apt-get update && \ 
   apt-get install -y nginx-extras && \
   rm -rf /var/lib/apt/lists/*
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf

ENV HOME /root
