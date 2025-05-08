FROM maven:3.9.9-eclipse-temurin-11 
RUN git clone https://dev.mm-bbs.de/Tuttas/FIAE23K.git restapi 
RUN cd restapi 
WORKDIR ./restapi 
RUN mvn package  
EXPOSE 8000 
CMD  ["java","-jar","target\\todo-todo-jar-with-dependencies.jar"] 