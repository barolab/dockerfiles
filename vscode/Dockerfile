# Visual Studio Code in a container
#	NOTE: Needs the redering device (yeah... idk)
#
# docker run -d \
#    -v /tmp/.X11-unix:/tmp/.X11-unix \
#    -v $HOME:/home/user \
#    -e DISPLAY=unix$DISPLAY \
#    --device /dev/dri \
#    --name vscode \
#    barolab/vscode .

FROM golang:1.11
LABEL maintainer "Romain Bailly <rbailly17000@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /home/user
COPY start.sh /usr/local/bin/start.sh
RUN apt-get update && apt-get install --no-install-recommends -y \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        gnupg \
        libasound2 \
        libatk1.0-0 \
        libcairo2 \
        libcups2 \
        libexpat1 \
        libfontconfig1 \
        libfreetype6 \
        libgtk2.0-0 \
        libpango-1.0-0 \
        libx11-xcb1 \
        libxcomposite1 \
        libxcursor1 \
        libxdamage1 \
        libxext6 \
        libxfixes3 \
        libxi6 \
        libxrandr2 \
        libxrender1 \
        libxss1 \
        libxtst6 \
        openssh-client \
        shellcheck \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
    && curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -  \
    && echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list \
    && apt-get update \
    && apt-get -y install --no-install-recommends code nodejs \
	&& rm -rf /var/lib/apt/lists/* \
    && useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME \
    && chmod +x /usr/local/bin/start.sh

WORKDIR $HOME
ENTRYPOINT [ "/usr/local/bin/start.sh" ]