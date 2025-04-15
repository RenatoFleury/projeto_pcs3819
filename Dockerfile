FROM nodered/node-red:4.0.9

# Copia os arquivos de dependências
COPY package.json /data/
RUN cd /data && npm install --only=production

# Copia o flow pronto
COPY flows.json /data/
COPY flows_cred.json /data/
COPY settings.js /data/settings.js
