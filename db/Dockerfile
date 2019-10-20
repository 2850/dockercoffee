FROM postgres:9.4


# COPY back.gz /docker-entrypoint-initdb.d/back.gz

# RUN mkdir autoshell
# WORKDIR /autoshell

# COPY autoshell/restoredb.sh /autoshell/restoredb.sh

# USER postgres

# RUN mkdir db_data
# WORKDIR /db_data

# COPY db_data/mydb.bak /db_data/mydb.bak
# RUN chmod +x /db_data/

# USER root

# # =========== docker Image 安裝 排程Cron ============
# RUN apt-get update && apt-get -y install cron

# # Copy hello-cron file to the cron.d directory
# COPY hello-cron /etc/cron.d/hello-cron

# # Give execution rights on the cron job
# RUN chmod 0644 /etc/cron.d/hello-cron

# # Apply cron job
# RUN crontab /etc/cron.d/hello-cron

# # Create the log file to be able to run tail
# RUN touch /var/log/cron.log

# # Run the command on container startup
# CMD cron && tail -f /var/log/cron.log
# # =========== docker Image 安裝 排程Cron ============

