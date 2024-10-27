# Use the official MySQL image from the Docker Hub
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USERNAME}
ENV MYSQL_PASSWORD=${MYSQL_USER_PASSWORD}

# Expose the default MySQL port
EXPOSE 3306

# Copy any initialization scripts to the Docker entrypoint directory
COPY ./init-db.d /docker-entrypoint-initdb.d/

# Set the default command to run MySQL server
CMD ["mysqld"]