FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ADD target/spring-petclinic-2.7.0-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.7.0-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"
