FROM java:8
FROM maven:alpine
RUN apt update 
COPY . .
RUN mvn package && cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/shareddata/ && rm -rf  /boxfuse-sample-java-war-hello/target/*