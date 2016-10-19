FROM java:7

ENV FOO bar
#COPY src /root/javahelloworld/src
COPY src /root/javahelloworld/src

WORKDIR  /root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

RUN apt-get update && apt-get install -y vim curl
ENTRYPOINT ["java","-c","bin","HelloWorld"]
