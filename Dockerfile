FROM ghcr.io/colossyan/aws-cli-kubectl:2.2.2-1.19.6

ARG HELM_VERSION=3.7.2
ENV HELM_VERSION=$HELM_VERSION
RUN curl -o helm-linux-amd64.tar.gz https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz
RUN yum -y install gzip tar
RUN tar -zxvf helm-linux-amd64.tar.gz
RUN cp linux-amd64/helm /bin/
