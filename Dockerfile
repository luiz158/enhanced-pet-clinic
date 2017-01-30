FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
  && add-apt-repository -y ppa:webupd8team/java \
  && apt-get update \
  && apt-get install -y oracle-java8-installer \
  && apt-get install -y git \
  && cd /home \
  && git clone https://github.com/YoonSung/enhanced-pet-clinic

WORKDIR /home

ENTRYPOINT java -jar /home/enhanced-pet-clinic/petclinic.jar