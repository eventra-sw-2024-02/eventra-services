FROM openjdk:21-jdk
LABEL authors="jackby03"

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:resolve
COPY src src
RUN mvn package -DskipTests
ENTRYPOINT ["java", "-jar", "target/user-services-0.0.1-SNAPSHOT.jar"]