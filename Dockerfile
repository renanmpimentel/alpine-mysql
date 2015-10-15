FROM alpine:3.2
MAINTAINER Azuki <support@azukiapp.com>

# Additional repositories
RUN repositories='\
  http://dl-4.alpinelinux.org/alpine/v3.2/main/\
  @edge http://nl.alpinelinux.org/alpine/edge/main/\
  @testing http://nl.alpinelinux.org/alpine/edge/testing/' \
  && echo $repositories | sed -e 's/\/\s/\/\n/g' > /etc/apk/repositories

# Install mysql

RUN apk --update add mysql mysql-client && \
    rm -f /var/cache/apk/*
    
