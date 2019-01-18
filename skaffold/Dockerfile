# Run skaffold in a container
#
# docker run -ti --rm \
#	--name skaffold \
#	--volume $HOME:/home/user \
#	barolab/skaffold
#

FROM alpine AS build
WORKDIR /
RUN apk add --no-cache ca-certificates curl \
    && curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

FROM alpine
COPY --from=build /skaffold /usr/local/bin

ENV HOME /home/user
RUN apk add --no-cache ca-certificates \
    && chmod +x /usr/local/bin/skaffold \
    && adduser -S user -h $HOME \
	&& chown -R user $HOME

WORKDIR $HOME
ENTRYPOINT ["skaffold"]