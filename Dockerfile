FROM openjdk:11-jdk
VOLUME /tmp
ARG APPJAR=target/*.jar
COPY ${APPJAR} app.jar
CMD ["sh", "-c", "java -jar /app.jar"]
