FROM openjdk:21-jdk
LABEL authors="jackd"

COPY . /app
WORKDIR /app
RUN ./mvnw package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/target/user-services-0.0.1-SNAPSHOT.jar"]