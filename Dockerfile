FROM codenvy/debian_jdk8

USER root 

EXPOSE 8888

RUN sudo mkdir -p /tmp/pet-clinic

COPY ./enhanced-pet-clinic-exec.jar	/tmp/pet-clinic

# GET entry point script running server and client binaries
COPY ./startup.sh /tmp/pet-clinic
RUN whoami && ls -l /tmp/pet-clinic/startup.sh && chmod +x /tmp/pet-clinic/startup.sh

RUN ls -l /tmp/pet-clinic/

# EXECUTE ENTRY POINT LAUNCHING THE SERVER AND CLIENT TO PROVIDE
ENTRYPOINT [ "/tmp/pet-clinic/startup.sh" ]