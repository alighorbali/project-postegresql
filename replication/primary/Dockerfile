FROM postgres:15

COPY ./config/postgresql.conf /etc/postgresql/postgresql.conf
COPY ./config/pg_hba.conf /etc/postgresql/pg_hba.conf

# Override default config path
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
