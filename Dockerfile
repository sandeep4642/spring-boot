FROM openjdk:11

RUN groupadd -g 1999 -sandeep-grp && useradd -r -u 1999 -g root sandeep

RUN mkdir /apps

WORKDIR /apps

COPY ./target/*.jar /apps

RUN chown sandeep:sandeep-grp /apps -R

EXPOSE 8080

USER sandeep:sandeep-grp

CMD ["java", "-jar", "/apps/JUnit-Testing-0.0.1-SNAPSHOT.jar"]
