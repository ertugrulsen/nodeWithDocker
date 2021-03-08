FROM zulhilmizainuddin/jenkins-agent-nodejs
USER root


RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN apt-cache policy docker-ce
RUN apt-get install -y docker-ce

CMD [“echo”,”docker install”] 

