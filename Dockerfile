# docker build . --force-rm=true -t loom-viewer
# mkdir $LOCAL_LOOM_DIR
# (copy .loom files to $LOCAL_LOOM_DIR)
# docker run -p 8003:8003 -v $LOCAL_LOOM_DIR:/looms 
FROM continuumio/anaconda3

RUN mkdir /looms

RUN pip install loompy==2.0.10 loom-viewer==0.32.2 PyHamcrest>=1.9.0

RUN sed -i 's|gevent.wsgi|gevent.pywsgi|g' /opt/conda/lib/python3.7/site-packages/loom_viewer/loom_server.py

VOLUME ["/looms"]

CMD loom --dataset-path /looms
