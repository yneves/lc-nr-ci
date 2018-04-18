FROM circleci/openjdk:8-jdk-browsers

RUN sudo apt-get update
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install nodejs

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN sudo apt-get update
RUN sudo apt-get upgrade google-chrome-stable
