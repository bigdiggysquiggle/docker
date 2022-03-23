FROM debian

VOLUME ["/minecraft"]
WORKDIR /minecraft

COPY server.jar /minecraft/server.jar
COPY eula.txt /minecraft/eula.txt

EXPOSE 25565

RUN apt-get update -y && apt-get upgrade -y
RUN	apt-get install -y software-properties-common openjdk-17-jdk-headless

CMD java -Xmx1024M -Xms1024M -jar /minecraft/server.jar nogui

# -p [port]:[port]/[protocol]

# docker build -t Minecraft
# docker run --rm --name Minecraft -p 25565:25565 -v $HOME/worlds minecraft
