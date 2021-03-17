FROM ubuntu:14.04

# use uid and gid from host to share dir permission
ARG MAIN_USER=channing
ARG USER_UID=1000
ARG USER_GID=1000

USER root

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y apt-utils apt-transport-https sudo net-tools iputils-ping \
    && apt-get install -y git git-core gnupg flex bison gperf build-essential zip unzip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev xsltproc libgl1-mesa-dev libxml2-utils lzop openjdk-7-jdk openjdk-8-jdk python bc libswitch-perl bsdmainutils gawk ccache cpio libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && groupadd -g $USER_GID $MAIN_USER \
    && useradd -u $USER_UID -g $USER_GID -rms /bin/bash $MAIN_USER \
    && usermod -aG sudo $MAIN_USER \
    && echo $MAIN_USER:defaultpassword | chpasswd

USER $MAIN_USER
