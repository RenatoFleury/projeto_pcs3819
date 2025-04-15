# Usar a imagem oficial do Node-RED como base
FROM nodered/node-red:latest

# Copiar o package.json e flows.json para o diretório de trabalho do Node-RED
COPY package.json /data/
COPY flows.json /data/

# Mudar para o diretório de trabalho
WORKDIR /data

# Instalar as dependências do projeto
RUN npm install --unsafe-perm

# Expor a porta 1880 (porta padrão do Node-RED)
EXPOSE 1880

# Comando para iniciar o Node-RED
CMD ["npm", "start"]