# Usar una version específica de Ubuntu
FROM ubuntu:22.04

# Actualizar el sistema e instalar herramientas básicas de una sola capa
RUN apt update && apt upgrade -y && \
    rm -rf /var/lib/apt/lists/* 

COPY entrypoint.sh .

RUN chmod 755 entrypoint.sh

ENTRYPOINT [entrypoint.sh]
