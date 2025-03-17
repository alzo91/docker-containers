FROM docker.n8n.io/n8nio/n8n:latest

WORKDIR /data

COPY requirements.txt requirements.txt

# Mudar para o usuário root para ter permissões adequadas
USER root

# Instalar pacotes necessários e configurar ambiente virtual
RUN apk add --no-cache --update curl
# python3 py3-pip && \
#    python3 -m venv /opt/venv && \
#    /opt/venv/bin/pip install --upgrade pip && \
#    /opt/venv/bin/pip install -r requirements.txt

# Forçar o uso do Python e pacotes do ambiente virtual
#ENV PATH="/opt/venv/bin:$PATH"
#ENV PYTHONPATH="/opt/venv/lib/python3.12/site-packages:$PYTHONPATH"

# Voltar para o usuário padrão (n8n)
USER node