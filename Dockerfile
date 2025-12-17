FROM docker.io/ubuntu/jre:21-24.04_edge

COPY graphwalker-cli-4.3.3.jar /

EXPOSE 8887

CMD [ "exec", "java", "-jar", "/graphwalker-cli-4.3.3.jar", "online", "--service", "RESTFUL"]