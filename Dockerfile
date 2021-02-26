FROM openjdk:15 AS build
COPY src/Main.java .
RUN javac Main.java
CMD ["java", "Main"]

FROM openjdk:15
COPY --from=build Main.class .
CMD ["java", "Main"]