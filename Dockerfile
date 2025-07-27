FROM eclipse-temurin:23-jre

ADD target/DashboardService.jar /DashboardService.jar
ADD docker/collector/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /DashboardService.jar