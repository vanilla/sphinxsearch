FROM centos:8
ENV SPHINX_VERSION="3.2.1" SPHINX_REVISION="f152e0b"
RUN yum update --assumeyes --quiet && \
    yum upgrade --assumeyes --quiet && \
    yum install wget --assumeyes --quiet && \
    wget --quiet -O - https://sphinxsearch.com/files/sphinx-${SPHINX_VERSION}-${SPHINX_REVISION}-linux-amd64.tar.gz | gunzip -c | tar xf - -C /opt && \
    mv /opt/sphinx-${SPHINX_VERSION} /opt/sphinxsearch && \
    ln -s /opt/sphinxsearch/bin/* /usr/local/bin/
EXPOSE 9312 9306
