FROM circleci/openjdk:8-jdk-browsers

RUN sudo apt-get update
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install nodejs
