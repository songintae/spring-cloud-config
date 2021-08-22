FROM openjdk:8-jdk
COPY dockerfile-entrypoint.sh /
COPY wait-for-it.sh /
RUN chmod 777 wait-for-it.sh && \
chmod 777 dockerfile-entrypoint.sh
RUN addgroup spring && useradd spring -g spring
USER spring:spring
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["/bin/bash", "-c", "sh ./dockerfile-entrypoint.sh"]