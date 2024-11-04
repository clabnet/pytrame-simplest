FROM kitware/trame:py3.10-glvnd
#FROM kitware/trame:py3.10
#FROM kitware/trame:py3.10-ubuntu22.04

RUN apt-get update && \
    apt-get install --no-install-recommends --yes \
    libxrender1  \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=trame-user:trame-user . /deploy

ENV TRAME_CLIENT_TYPE=vue2
RUN /opt/trame/entrypoint.sh build
