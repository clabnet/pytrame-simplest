FROM kitware/trame:py3.9

RUN apt-get update && \
    apt-get install --no-install-recommends --yes \
    libx11-6 \
    libgl1 \
    libxrender1 \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=trame-user:trame-user . /deploy

ENV TRAME_CLIENT_TYPE=vue2

RUN /opt/trame/entrypoint.sh build
