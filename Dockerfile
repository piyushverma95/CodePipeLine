FROM maven:3-jdk-8

RUN mvn -version

WORKDIR /usr/app

COPY * /usr/app/

RUN ls -l

RUN mvn clean compile -DskipTests

RUN mvn package -DskipTests

RUN ls -l

RUN cd target

#RUN mkdir -p /usr/app/data/

RUN sh -c 'touch CodePipeline-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","CodePipeline-0.0.1-SNAPSHOT.jar"]
