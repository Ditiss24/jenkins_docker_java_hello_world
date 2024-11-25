FROM openjdk:11-jdk-slim
WORKDIR /jenkins_docker_helloworld
COPY helloworld.class /jenkins_docker_helloworld/helloworld.class
CMD ["java","helloworld"]
