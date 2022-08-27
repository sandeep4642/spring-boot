FROM openjdk:11

RUN mkdir /apps

WORKDIR /apps

COPY ./target/*.jar /apps

EXPOSE 8080

CMD ["java", "-jar", "/apps/JUnit-Testing-0.0.1-SNAPSHOT.jar"]
