#specifico l'immagine base
FROM node:18.4.0-alpine 
#specifico la directory
WORKDIR /usr/app
#faccio in modo di copiare il file json per avere l'elenco delle dipendenze da installare
COPY ./package.json ./
#installo le dipendenze
RUN npm install
#ricopia il necessario non eseguendo npm install
COPY ./ ./

#comando di default per farlo partire
CMD ["npm","start"]