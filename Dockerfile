FROM carlov20/oracle-tomcat

MAINTAINER cv

ADD jmxremote.access conf/
ADD jmxremote.password conf/
ADD catalina-jmx-remote.jar lib/
ADD setenv.sh bin/
RUN sed -i -e 's/\r$//' bin/setenv.sh
RUN chmod 600 conf/jmxremote.password
ADD server.xml conf/
EXPOSE 10001
EXPOSE 10002