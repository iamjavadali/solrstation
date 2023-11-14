FROM alpine

LABEL "Project"="Jenkins Pi"
LABEL "Author"="Javad Ali"

EXPOSE 8081
EXPOSE 50000

RUN apk add --no-cache jenkins
ENTRYPOINT ["jenkins"]