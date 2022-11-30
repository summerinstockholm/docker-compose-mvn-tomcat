FROM maven:3.8.6-openjdk-18-slim
COPY . .
RUN mvn package && cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/sharedata/ && rm -rf  /boxfuse-sample-java-war-hello/target/*