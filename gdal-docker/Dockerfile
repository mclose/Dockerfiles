FROM alpine:latest
MAINTAINER Matthew Close <md_close@yahoo.com>

RUN apk update && apk add curl

RUN mkdir /vdatum \
    && mkdir -p /usr/share/proj \
    && cd /vdatum \
    && wget http://download.osgeo.org/proj/vdatum/usa_geoid2012.zip && unzip usa_geoid2012.zip -d /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/usa_geoid2009.zip && unzip usa_geoid2009.zip -d /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/usa_geoid2003.zip && unzip usa_geoid2003.zip -d /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/usa_geoid1999.zip && unzip usa_geoid1999.zip -d /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/vertcon/vertconc.gtx && mv vertconc.gtx /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/vertcon/vertcone.gtx && mv vertcone.gtx /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/vertcon/vertconw.gtx && mv vertconw.gtx /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/egm96_15/egm96_15.gtx && mv egm96_15.gtx /usr/share/proj \
    && wget http://download.osgeo.org/proj/vdatum/egm08_25/egm08_25.gtx && mv egm08_25.gtx /usr/share/proj \
    && cd / \
    && rm -rf /vdatum

RUN apk add build-base file autoconf automake libtool git \
    && git clone https://github.com/OSGeo/proj.4.git \
    && cd proj.4 \
    && ./autogen.sh \
    && ./configure --prefix=/usr \
    && make \
    && make install

RUN set -x \
    && mkdir /gdal \
    && cd /gdal \
    && curl -o gdal-2.1.0.tar.gz http://download.osgeo.org/gdal/2.1.0/gdal-2.1.0.tar.gz \
    && tar xzvf gdal-2.1.0.tar.gz \
    && cd gdal-2.1.0 \
    && ./configure \
    && make \
    && make install

# For shapefiles (and possibly others) the working directory needs to be shared
# with the volume. So setup some directories in the container that we will
# user for that share at 'docker run'.
RUN mkdir /data
WORKDIR /data
