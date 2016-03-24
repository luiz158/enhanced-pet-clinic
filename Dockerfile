FROM java:8
VOLUME /tmp
ADD enhanced-pet-clinic-exec.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/enhanced-pet-clinic-exec.jar"]