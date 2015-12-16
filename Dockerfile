FROM fedora:23

RUN dnf clean all && \
        dnf update -y && \
        dnf install -y nginx && \
        dnf clean all

VOLUME ["/tmp/nginx"]
VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

ENV HOME /root

WORKDIR /root

COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
