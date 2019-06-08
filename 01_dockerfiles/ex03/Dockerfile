FROM debian:9

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl openssh-server ca-certificates
RUN apt-get install -y postfix
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
RUN chmod 777 script.deb.sh
RUN ./script.deb.sh
RUN apt-get install -y gitlab-ce
