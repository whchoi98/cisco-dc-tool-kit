# VERSION 1.0


FROM alpine

MAINTAINER Woo Hyung Choi, whchoi@cisco.com , whchoi98@gmail.com

# basic package install , pip install

RUN apk update \
&& apk upgrade \
&& apk add vim git python python-dev py-pip gcc g++ make bash \
&& pip install flask flask-admin flask-bootstrap flask-cors flask-httpauth flask-sqlalchemy flask-wtf gitpython \
&& pip install graphviz ipaddress jsonschema py-radix pymysql requests tabulate websocket-client deepdiff

# acitoolkit setup

RUN git clone https://github.com/datacenter/acitoolkit.git \
&& cd /acitoolkit \
&& python ./setup.py install \
&& cd /acitoolkit \
&& python ./setup.py develop

# nxtoolkit setup

RUN git clone https://github.com/datacenter/nxtoolkit.git \
&& cd /nxtoolkit \ 
&& python ./setup.py install \
&& cd /nxtoolkit \ 
&& python ./setup.py develop 

# CiscoUCSM SDK setup

RUN git clone https://github.com/CiscoUcs/ucsmsdk \
&& pip install ucsmsdk \
&& cd /ucsmsdk \
&& make install

# vmware SDK pyvmomi setup

RUN pip install pyvmomi \
&& git clone https://github.com/whchoi98/whchoi_pyvmomi-community-samples.git 

WORKDIR /

CMD [“/bin/bash"]
