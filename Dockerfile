FROM codenvy/debian_jdk8
USER root 
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
#RUN sudo mkdir -p /tmp/pet-clinic
COPY ./enhanced-pet-clinic-exec.jar	/
# GET entry point script running server and client binaries
COPY ./startup.sh /
RUN whoami && ls -l /startup.sh && chmod +x /startup.sh
RUN ls -l /
# EXECUTE ENTRY POINT LAUNCHING THE SERVER AND CLIENT TO PROVIDE
ENTRYPOINT ["/startup.sh"]