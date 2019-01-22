# Run hesperides in a container
#
# docker run -ti --rm \
#	--name hesperides-cli \
#	--volume $HOME:/home/user \
#	barolab/hesperides-cli
#

FROM python:3.6
LABEL maintainer "Romain Bailly <rbailly17000@gmail.com>"

ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME \
    && pip install --no-cache-dir hesperides-cli

WORKDIR $HOME
USER user
ENTRYPOINT ["hesperides"]