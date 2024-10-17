FROM openjdk:21-jdk-alpine
LABEL authors="jackd"

RUN apk --no-cache add curl maven
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:resolve
COPY src src
RUN mvn package -DskipTests
ENTRYPOINT ["java", "-jar", "target/user-services-0.0.1-SNAPSHOT.jar"]