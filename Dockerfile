FROM imdocker1/angular-client3 as node

#Use stored precompiled cached files
ARG CACHE_RELEASE_VERSION=0.0.2
ARG CACHE_RELEASE_HASH=eb9a6708a87816ab2dd5b95bb19e7b2ab2cdcc354d1e46d115d438892a5a4141
ARG CACHE_FILE=cache4.tar.gz

RUN ls -la && cd / && set -ex && wget --quiet https://github.com/imdocker/angular-client3/releases/download/${CACHE_RELEASE_VERSION}/${CACHE_FILE} -O cache1.tar.gz \
  && echo "${CACHE_RELEASE_HASH}  cache1.tar.gz" | sha256sum -c \
  && tar -xf cache1.tar.gz && rm cache1.tar.gz
