#         __          .__
# _______/  |_ ___.__.|  |_______
# \____ \   __<   |  ||  |\_  __ \
# |  |_> >  |  \___  ||  |_|  | \/
# |   __/|__|  / ____||____/__|
# |__|         \/
#
# https://ptylr.com
# https://www.linkedin.com/in/ptylr/
#
##########################################################################
# Image: ptylr/docker-core-java
##########################################################################
FROM ptylr/docker-core-ubuntu
MAINTAINER Paul Taylor <me@ptylr.com>

ENV REFRESHED_AT 2024-07-06

WORKDIR /usr/local/ptylr

ADD https://download.java.net/java/GA/jdk22.0.1/c7ec1332f7bb44aeba2eb341ae18aca4/8/GPL/openjdk-22.0.1_linux-x64_bin.tar.gz /usr/local/ptylr/
RUN tar -zxvf openjdk-22.0.1_linux-x64_bin.tar.gz
RUN ln -s ./jdk-22.0.1/ jdk-22
RUN rm openjdk-22.0.1_linux-x64_bin.tar.gz
ENV JAVA_HOME /usr/local/ptylr/jdk-22
ENV PATH $JAVA_HOME/bin:$PATH

CMD "/bin/bash"
