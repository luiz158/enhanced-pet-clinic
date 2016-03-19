FROM codenvy/debian_jdk8

USER root 

EXPOSE 8888

COPY ./enhanced-pet-clinic-exec.jar	/tmp/

# GET entry point script running server and client binaries
COPY ./startup.sh /tmp/
RUN whoami && ls -l /tmp/startup.sh && chmod +x /tmp/startup.sh

# EXECUTE ENTRY POINT LAUNCHING THE SERVER AND CLIENT TO PROVIDE
ENTRYPOINT [ "/tmp/startup.sh" ]