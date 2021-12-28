FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app
Copy ./usr/app
COPY --from=build/libs/my-app-1.0-SNAPSHOT.jar 
#COPY --from=build /usr/app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]


