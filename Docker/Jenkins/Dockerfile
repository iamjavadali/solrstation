FROM alpine

LABEL "Project"="Jenkins Pi"
LABEL "Author"="Javad Ali"

EXPOSE 80
EXPOSE 50000

ADD config.sh /config.sh
RUN chmod +x /config.sh && /config.sh