FROM amazoncorretto:24

LABEL version="1.0"

EXPOSE 5643


WORKDIR /app

COPY target/emailWriter-0.0.1-SNAPSHOT.jar /app/docker-demo.jar

ENV GEMINI_URL=https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?
ENV GEMINI_KEY=

ENTRYPOINT ["java", "-jar", "docker-demo.jar"]
