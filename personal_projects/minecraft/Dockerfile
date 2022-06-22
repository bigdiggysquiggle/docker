FROM debian

USER root

VOLUME ["/home/minecraft"]
WORKDIR /home/minecraft

#COPY server.jar /minecraft/server.jar
#COPY eula.txt /minecraft/eula.txt

EXPOSE 25565

RUN apt-get update -y && apt-get upgrade -y
RUN	apt-get install -y software-properties-common openjdk-17-jdk-headless curl

CMD curl --output server.jar https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar; echo "eula=true" > eula.txt; java -Xmx1024M -Xms1024M -jar /home/minecraft/server.jar nogui

# -p [port]:[port]/[protocol]

# docker build -t minecraft-web .
# docker run --rm --name minecraft-web -p 25565:25565 -v $HOME/worlds minecraft-web
