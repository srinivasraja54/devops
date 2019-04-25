FROM ubuntu
RUN apt-get update -y && apt-get install apache2 apache2-utils -y
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl" ]
CMD [ "-D", "FOREGROUND" ]
