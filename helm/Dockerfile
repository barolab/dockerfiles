# Run helm in a container
#
# docker run -ti --rm \
#	--name helm \
#   --volume "${HOME}:/root"
#	barolab/helm
#

FROM alpine
ARG HELM_VERSION=v2.12.2
RUN apk add --no-cache ca-certificates curl tar \
    && curl https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz > /tmp/helm.tar.gz \
    && mkdir -p /tmp/helm \
    && tar xvf /tmp/helm.tar.gz -C /tmp/helm \
    && mv /tmp/helm/linux-amd64/helm /usr/local/bin/helm \
    && chmod 777 /usr/local/bin/helm \
    && rm -rf /tmp/helm*

WORKDIR /root
ENTRYPOINT [ "helm" ]