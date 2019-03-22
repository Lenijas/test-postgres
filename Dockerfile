FROM openshift/postgresql
RUN echo $UID
USER root
RUN yum -y update
RUN yum -y install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
RUN yum -y install epel-release
RUN yum -y install postgis
RUN chmod 777 /var/lib/rpm/.dbenv.lock
RUN echo 1111 | passwd --stdin root
USER 26
