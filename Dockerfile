FROM maven:latest
WORKDIR /App
COPY pom.xml /App
COPY . /App/
RUN mvn package
CMD [ "java", "-jar", "docker_demo.jar" ]
# ENTRYPOINT [ "java", "-jar", "docker_demo.jar" ]
