FROM debian

WORKDIR /home/minecraft

EXPOSE 25565

RUN apt-get update -y && apt-get upgrade -y
RUN	apt-get install -y software-properties-common openjdk-17-jdk-headless curl
RUN curl --output server.jar https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar
RUN	echo "eula=true" > eula.txt

CMD ["sh", "java -Xmx1024M -Xms1024M -jar server.jar nogui"] 

# -p [port]:[port]/[protocol]

# docker run --rm --name Minecraft -p 25565:25565 -v 
