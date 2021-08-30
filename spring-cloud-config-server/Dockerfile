FROM openjdk:8-jdk
COPY dockerfile-entrypoint.sh . /
COPY wait-for-it.sh . /
RUN chmod 777 wait-for-it.sh && \
chmod 777 dockerfile-entrypoint.sh && \
addgroup spring && \
useradd spring -g spring
USER spring:spring
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["/bin/bash", "-c", "./dockerfile-entrypoint.sh"]