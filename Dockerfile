# stable official Java runtime base image
#FROM openjdk:17-jdk-slim

# metadata
#LABEL maintainer="your-email@example.com"
#LABEL version="1.0"
#LABEL description="A simple Java application"

#FROM ubuntu:latest
#FROM openjdk:17-slim
FROM eclipse-temurin:17-jdk
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean
    
# working directory
WORKDIR /app

# Copy source code into the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
