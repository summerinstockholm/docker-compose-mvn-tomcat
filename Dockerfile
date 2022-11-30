FROM maven:3.8.2-jdk-11
COPY . .
RUN mvn package && cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/sharedata/ && rm -rf  /boxfuse-sample-java-war-hello/target/*