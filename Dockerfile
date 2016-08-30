# scipy & numpy
# a docker image that includes scipy and numpy for python 3.5
# VERSION       1.0

FROM pypy:3-5
MAINTAINER andrew <andrew@pdview.com.au>

RUN apt-get update && apt-get install --yes --force-yes \
build-essential \
libxml2-dev \
libxslt-dev \
apt-utils \
libblas-dev \
liblapack-dev \
libpq-dev \
libsuitesparse-dev \
swig \
&& rm -rf /var/lib/apt/lists/*

RUN pip3 install numpy scipy 

CMD ["pypy3"]
