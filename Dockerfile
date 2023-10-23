FROM ubuntu:20.04

#RUN sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
#RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list


RUN apt-get update -y && apt-get upgrade -y && \
     apt-get install -y gcc g++ make curl wget binutils python3 unzip p7zip-full
     
RUN dpkg --add-architecture i386 && apt-get update -y && \
     apt-get install -y binutils:i386 libc6:i386 libgcc1:i386 libstdc++5:i386 libstdc++6:i386  \
     && apt-get autoremove -y

RUN curl -fsSL https://xmake.io/shget.text | bash -s 2.8.3
