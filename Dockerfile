# DOCKER-VERSION 1.6.0
# VERSION 0.1

FROM odise/busybox-curl:stable

RUN mkdir -p /usr/share/shapefiles-src

WORKDIR /usr/share/shapefiles-src

RUN curl -O http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip
RUN curl -O http://data.openstreetmapdata.com/land-polygons-split-3857.zip
RUN curl -O -L http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places_simple.zip

VOLUME ["/usr/share/shapefiles-src"]
CMD ["true"]
