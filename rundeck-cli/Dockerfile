# Run skaffold in a container
#
# docker run -ti --rm \
#	--name rundeck-cli \
#	--volume $HOME:/home/user \
#	barolab/rundeck-cli
#

FROM java:jre
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get install --no-install-recommends -y apt-transport-https ca-certificates curl gnupg \
    && echo "deb https://dl.bintray.com/rundeck/rundeck-deb /" | tee -a /etc/apt/sources.list \
    && curl "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" > /tmp/bintray.gpg.key \
    && apt-key add - < /tmp/bintray.gpg.key \
    && apt-get update \
    && apt-get install --no-install-recommends -y rundeck-cli

WORKDIR /root
ENTRYPOINT [ "rd" ]