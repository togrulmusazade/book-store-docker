#FROM openjdk:11 AS build
#
#
#COPY pom.xml mvnw ./
#COPY .mvn .mvn
#RUN ./mvnw dependency:resolve
#
#COPY src src
#RUN ./mvnw package


#FROM openjdk:11
#WORKDIR app
#COPY --from=build target/*.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]

#-------


FROM openjdk:11
WORKDIR /app
ADD target/book-store-0.0.1-SNAPSHOT.jar book-store-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "book-store-0.0.1-SNAPSHOT.jar"]



#FROM openjdk:11
#WORKDIR /app
#COPY . .
#RUN chmod +x mvnw && ./mvnw clean install -U
#ENTRYPOINT ["./mvnw", "spring-boot:run"]


