FROM openjdk: 18
VOLUME /tmp
EXPOSE 8084
ARG JAR_FILE=target/universityMaps-0.0.1-SNAPSHOT.jar
ADD ${1JAR_FILE} universityMaps.jar
ENTRYPOINT ["java", "-jar", "/universityMaps.jar"]