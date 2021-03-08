FROM zulhilmizainuddin/jenkins-agent-nodejs
USER root

RUN sudo apt install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

RUN apt-cache policy docker-ce
RUN apt-get install docker-ce
CMD [“echo”,”docker install”] 
