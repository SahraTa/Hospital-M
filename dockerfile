FROM ubuntu

RUN apt update 

RUN apt install lighttpd -y

COPY hello.html /var/www/html/
COPY start.sh /

ENTRYPOINT [ "bash", "/start.sh" ]

