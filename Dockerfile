FROM imdocker1/angular-client3 as node

#Use stored precompiled cached files
ARG CACHE_RELEASE_VERSION=0.0.2
ARG CACHE_RELEASE_HASH=01406bb8298ae19fb021fa21da0d38c4a685f20a9583fad80af22571ce107f09
ARG CACHE_FILE=cache1.tar.gz

RUN wget --quiet https://github.com/imdocker/angular-client3/releases/download/${CACHE_RELEASE_VERSION}/${CACHE_FILE} -O cache1.tar.gz \
  && echo "${CACHE_RELEASE_HASH}  cache1.tar.gz" | sha256sum -c \
  && tar -xf cache1.tar.gz && rm cache1.tar.gz
