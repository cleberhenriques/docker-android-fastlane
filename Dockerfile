FROM runmymind/docker-android-sdk:ubuntu-standalone

RUN  apt-get update -yqq && apt-get install -y \
  software-properties-common \
  && apt-get clean

RUN apt-add-repository ppa:brightbox/ruby-ng

RUN dpkg --add-architecture i386 && apt-get update -yqq && apt-get install -y \
  ruby2.4 \
  ruby2.4-dev \
  build-essential \
  sudo \
  && apt-get clean

RUN sudo gem install fastlane
