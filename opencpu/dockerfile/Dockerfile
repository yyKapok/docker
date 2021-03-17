FROM ubuntu:16.04

# use uid and gid from host to share dir permission
ARG MAIN_USER=channing
ARG USER_UID=1000
ARG USER_GID=1000

USER root

#ADD ./cmake-3.18.0-Linux-x86_64.sh  /tmp/

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get update \
    && apt-get install -y apt-utils apt-transport-https sudo net-tools iputils-ping \
    && apt-get install -y python build-essential vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && groupadd -g $USER_GID $MAIN_USER \
    && useradd -u $USER_UID -g $USER_GID -rms /bin/bash $MAIN_USER \
    && usermod -aG sudo $MAIN_USER \
    && echo $MAIN_USER:defaultpassword | chpasswd
#    && chmod u+x /tmp/cmake-3.18.0-Linux-x86_64.sh && /tmp/cmake-3.18.0-Linux-x86_64.sh --prefix=/usr --skip-license \

USER $MAIN_USER
