FROM java:8
FROM maven:alpine
COPY . .
RUN mvn package 
COPY /target/hello-1.0.war /tmp/shareddata
RUN rm -rf  /boxfuse-sample-java-war-hello/target/*