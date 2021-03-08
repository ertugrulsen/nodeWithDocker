FROM zulhilmizainuddin/jenkins-agent-nodejs
MAINTAINER ertugrulsen 

RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN apt-cache policy docker-ce
RUN apt-get install docker-ce

CMD [“echo”,”docker install”] 
