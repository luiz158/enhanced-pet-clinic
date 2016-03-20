FROM codenvy/debian_jdk8
USER root 
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN sudo mkdir -p /tmp/pet-clinic
COPY ./enhanced-pet-clinic-exec.jar	/tmp/pet-clinic
# GET entry point script running server and client binaries
COPY ./startup.sh /tmp/pet-clinic
RUN whoami && ls -l /tmp/pet-clinic/startup.sh && chmod +x /tmp/pet-clinic/startup.sh
RUN ls -l /
# EXECUTE ENTRY POINT LAUNCHING THE SERVER AND CLIENT TO PROVIDE
ENTRYPOINT ["/tmp/pet-clinic/startup.sh"]