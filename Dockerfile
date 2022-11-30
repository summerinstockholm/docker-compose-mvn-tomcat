FROM openjdk:18-jdk-slim
RUN apt update 
COPY . .
RUN mvn package && cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/sharedata/ && rm -rf  /boxfuse-sample-java-war-hello/target/*