FROM postgres:9.5
VOLUME /var/lib/postgresql/data:z
RUN apt-get -y update && apt-get install -y postgresql-9.5-postgis-2.2 postgresql-server-dev-9.5
RUN  echo "host    all             all             0.0.0.0/0               md5" >> /var/lib/postgresql/data/pg_hba.conf
USER postgres
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]
