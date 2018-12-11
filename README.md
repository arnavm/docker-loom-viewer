# docker-loom-viewer
A Docker image for loom-viewer

## Usage
> docker build . --force-rm=true -t loom-viewer
> mkdir $LOCAL_LOOM_DIR
> (copy .loom files to $LOCAL_LOOM_DIR)
> docker run loom-viewer -p 8003:8003 -v $LOCAL_LOOM_DIR:/looms
