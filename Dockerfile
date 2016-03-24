FROM java:8
VOLUME /tmp
#ADD enhanced-pet-clinic-1.3.0.RELEASE.jar enhanced-pet-clinic-exec.jar
COPY ./enhanced-pet-clinic-exec.jar /tmp
RUN bash -c 'touch /tmp/enhanced-pet-clinic-exec.jar'
ENTRYPOINT ["java","-jar","/tmp/enhanced-pet-clinic-exec.jar"]