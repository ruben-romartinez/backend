# Start with a base image containing Java runtime (mine java 8)
FROM openjdk:8u212-jdk-slim
# Add Maintainer Info
LABEL maintainer="rromartinez@gmail.com"
# Add a volume pointing to /tmp
VOLUME /tmp
# Make port 9090 available to the world outside this container
EXPOSE 9090
# The application's jar file (when packaged)
ARG JAR_FILE=target/backendTest-0.0.1-SNAPSHOT.jar
# Add the application's jar to the container
ADD ${JAR_FILE} backendTest.jar
# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/backendTest.jar"]