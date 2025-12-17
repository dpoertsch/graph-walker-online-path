FROM docker.io/alpine:latest AS build

RUN wget https://github.com/GraphWalker/graphwalker-project/releases/download/4.3.3/graphwalker-cli-4.3.3.jar

FROM docker.io/ubuntu/jre:21-24.04_edge

COPY --from=build /graphwalker-cli-4.3.3.jar /graphwalker-cli-4.3.3.jar

EXPOSE 8887

CMD [ "exec", "java", "-jar", "/graphwalker-cli-4.3.3.jar", "online", "--service", "RESTFUL"]
