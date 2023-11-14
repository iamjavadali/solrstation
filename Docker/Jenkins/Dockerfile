FROM alpine

LABEL "Project"="Jenkins Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80
EXPOSE 50000

ADD config.sh /scripts/config.sh
RUN chmod +x /scripts/config.sh
RUN /scripts/config.sh bin/sh