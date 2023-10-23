FROM ubuntu:22.04

RUN dpkg --add-architecture i386 && apt update -y \
     apt-get install -y gcc make curl wget lib32z1 binutils:i386 libc6:i386 libgcc1:i386 libstdc++5:i386 libstdc++6:i386 p7zip-full \
     python3 unzip xmake && apt autoremove -y

