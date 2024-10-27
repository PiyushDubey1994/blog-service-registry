# Use an official Ubuntu-based OpenJDK 17 runtime as a parent image
FROM openjdk:17-jdk

# Set the working directory inside the container
#WORKDIR /app

# ARG allows passing of build-time variables; in this case, it's used to determine the JAR file
#ARG JAR_FILE=target/*.jar

# Copy the application JAR file into the container
COPY target/blogsite-service-registry.jar blogsite-service-registry.jar

# Expose the port that your application runs on (Spring Boot default is 8080)
EXPOSE 8081

# Run the JAR file as the container's main process
#ENTRYPOINT ["java","-jar","blogsite-service-registry.jar"]
ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /blogsite-service-registry.jar" ]
