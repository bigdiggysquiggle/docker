FROM debian:9

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils && apt-get upgrade
RUN apt-get install -y wget openssh-server ca-certificates
RUN apt-get install -y postfix
RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
RUN chmod 777 script.deb.sh
RUN ./script.deb.sh
RUN apt-get update && apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

#docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03
