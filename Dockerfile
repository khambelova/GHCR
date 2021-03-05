FROM openjdk:15 AS build
COPY src/Main.java .
RUN javac Main.java

FROM openjdk:15
COPY --from=build Main.class .
CMD ["java", "Main"]