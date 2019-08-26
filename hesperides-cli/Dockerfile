# Run hesperides in a container
#
# docker run -ti --rm \
#	--name hesperides-cli \
#	--volume $HOME/.hespereides:/root/.hespereides \
#	barolab/hesperides-cli
#

FROM python:3.6
LABEL maintainer "Romain Bailly <rbailly17000@gmail.com>"
ENV HOME /root
RUN pip install --no-cache-dir hesperides-cli
WORKDIR /root
ENTRYPOINT ["hesperides"]
