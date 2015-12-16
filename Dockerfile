FROM nginx

RUN apt-get update && \ 
   apt-get autoremove -y nginx && \
   apt-get install -y nginx-full && \
   rm -rf /var/lib/apt/lists/*
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf

ENV HOME /root
