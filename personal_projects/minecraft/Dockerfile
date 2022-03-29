FROM debian

VOLUME ["/minecraft"]
WORKDIR /minecraft

COPY server.jar /minecraft/server.jar
COPY eula.txt /minecraft/eula.txt

EXPOSE 25565

RUN apt-get update -y && apt-get upgrade -y
RUN	apt-get install -y software-properties-common openjdk-17-jdk-headless

CMD curl --output server.jar https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar; echo "eula=true" > eula.txt; java -Xmx1024M -Xms1024M -jar /minecraft/server.jar nogui

# -p [port]:[port]/[protocol]

# docker build -t Minecraft
# docker run --rm --name Minecraft -p 25565:25565 -v $HOME/worlds minecraft
