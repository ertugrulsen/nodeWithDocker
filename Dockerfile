FROM zulhilmizainuddin/jenkins-agent-nodejs
USER root

RUN sudo apt-get update -y 
RUN sudo apt upgrade -y
RUN sudo apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg2
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN sudo apt update -y
RUN apt-cache policy docker-ce
RUN apt-get install -y docker-ce

CMD [“echo”,”docker install”]



