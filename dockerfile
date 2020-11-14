FROM ubuntu:16.04


# Initialize
CMD ["/sbin/my_init"]

RUN mkdir -p /data/
WORKDIR /data/
COPY requirements.txt /data/

# Setup
RUN apt-get update && apt-get install -y python3-dev \
                                         python-setuptools \
                                         python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# RUN (crontab -l ; echo "0 6 * * * /data/routing/data/updateAll.py > /dev/null 2>&1") | crontab 
    
# Clean up (baseimage recommended)
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ENTRYPOINT ["tail", "-f", "/dev/null"]
# docker build -t routing:latest .
# docker run -v /nobackup/users/bienkows/download/routing-1.1.3-rc1/:/data/routing/ routing:latest
