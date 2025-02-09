FROM ubuntu

RUN apt update 

RUN apt install lighttpd -y

COPY templates/Hospital.html /var/www/html/
COPY start.sh /

ENTRYPOINT [ "bash", "/start.sh" ]

