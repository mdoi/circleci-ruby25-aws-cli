FROM circleci/ruby:2.5.5

RUN sudo apt-get update --allow-releaseinfo-change && sudo apt-get install -y \
  ca-certificates \
  apt-transport-https \
  gnupg-agent \
  software-properties-common \
  tar \
  unzip \
  curl \
  less \
  --no-install-recommends \
  && sudo rm -rf /var/lib/apt/lists/*

RUN sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN sudo unzip awscliv2.zip
RUN sudo ./aws/install

