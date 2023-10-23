FROM ubuntu:22.04

RUN apt-get update -y && apt-get upgrade -y && \
     apt-get install software-properties-common -y && \
     add-apt-repository ppa:xmake-io/xmake && \
     apt-get install -y gcc make curl wget binutils python3 unzip xmake p7zip-full
     
RUN dpkg --add-architecture i386 && apt update -y && \
     apt-get install -y binutils:i386 libc6:i386 libgcc1:i386 libstdc++5:i386 libstdc++6:i386  \
     && apt autoremove -y

