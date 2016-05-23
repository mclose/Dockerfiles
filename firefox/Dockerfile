FROM ubuntu:vivid

MAINTAINER Matthew Close "https://github.com/mclose"
# requires socat to be installed and running
# alias dockerx='socat -d -d TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"'
# usage
# docker run -it -e DISPLAY=192.168.99.1:0 mclose/firefox

RUN apt-get update
RUN apt-get -y install firefox

ENTRYPOINT ["firefox"]
CMD ["https://www.google.com"]
