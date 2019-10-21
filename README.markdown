# Docker Shapefiles

Docker image to hold shapefiles for OSM-Bright.

It downloads shapefiles for OSM-Bright into `/usr/share/shapefiles-src` for usage by my `docker-osm-bright` image.

## Usage

Build the image:

    $ sudo docker build openfirmware/shapefiles github.com/gelinger777/docker-shapefiles.git

Run it as a data-only container:

    $ sudo docker run --name shapefiles openfirmware/shapefiles

Now a container is available named `shapefiles` that can be accessed by other containers that are started with the `--volumes-from` option. This will mount `/usr/share/shapefiles-src` from this container at `/usr/share/shapefiles-src` in your other container, allowing you to extract and process the zip files.
