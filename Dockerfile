#
# Build image : 
# docker build .
#
# 
# Create service:
# docker-compose up --not-start
#
# Start:
# docker-compose start
#
#
# Connect bash
# docker exec -it name of the image sh
#
#

FROM openjdk:8-jre-alpine
ADD target/cubegenerator-1.0-SNAPSHOT.jar cubegenerator-1.0-SNAPSHOT.jar
EXPOSE 8080
ENV JAVA_OPTS=""

ENTRYPOINT [ "java", "-jar", "cubegenerator-1.0-SNAPSHOT.jar"]
