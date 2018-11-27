FROM circleci/openjdk:8u162-jdk-stretch

ENV SBT_VERSION 0.13.16

RUN sudo apt-get update \
  && sudo apt-get install -y gnupg2 apt-transport-https \
  && echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list \
  && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 \
  && sudo apt-get update \
  && sudo apt-get install -y sbt=${SBT_VERSION}
