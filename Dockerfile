FROM debian:buster-slim
ENV DEBIAN_FRONTEND noninteractive

ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update  \
  && apt-get -y install \
    build-essential \
	bzr \
	scons \
	wget \
	unzip \
	zip \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/workspace
WORKDIR /root

COPY trimui-toolchain.tar.xz /opt
COPY setup-toolchain.sh .
RUN ./setup-toolchain.sh

COPY setup-env.sh .
RUN cat setup-env.sh >> .bashrc

VOLUME /root/workspace
WORKDIR /root/workspace

CMD ["/bin/bash"]