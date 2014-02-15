FROM ubuntu:12.04
MAINTAINER VidyaRaghavan
#
#    docker build -t Shippable:Docs . && docker run -p 8000:8000 Shippable:Docs
#

# TODO switch to http://packages.ubuntu.com/trusty/python-sphinxcontrib-httpdomain once trusty is released

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq make python-pip python-setuptools
# pip installs from docs/requirements.txt, but here to increase cacheability
RUN pip install Sphinx==1.2.1
RUN pip install sphinxcontrib-httpdomain==1.2.0
ADD Docs
RUN make -C Docs clean Docs

WORKDIR /Docs/_build/html
CMD ["python", "-m", "SimpleHTTPServer"]
# note, EXPOSE is only last because of https://github.com/vidyar/Shippable-docs/issues/3525
EXPOSE 8000
