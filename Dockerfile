FROM openjdk:11-jdk-slim
WORKDIR /app
COPY helloworld.class /app/helloworld.class
CMD ["java","helloworld"]
