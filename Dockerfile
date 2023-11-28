FROM centos:7
LABEL This file describes a containerized apcahe
RUN sudo yum update
RUN sudo yum -y install httpd
COPY index.html /var/www/httpd
CMD [ "/usr/sbin/httpd" ]
ENTRYPOINT [ "-D," "FOREGROUND"]
