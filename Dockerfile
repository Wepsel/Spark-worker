FROM bitnami/spark:latest

USER root

# Update package lists and install Python 3.10
RUN apt-get update && \
    apt-get install -y python3.10

# Create a symlink for python3.10
RUN ln -s /usr/bin/python3.10 /usr/bin/python3

USER 1001
