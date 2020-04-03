FROM jetbrains/teamcity-minimal-agent

RUN apt-get update
RUN apt-get install curl -y

WORKDIR /root/installkubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN rm -rf /root/installkubectl
