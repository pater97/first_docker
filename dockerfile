#specifico l'immagine base
FROM node:18.4.0-alpine 
#specifico la directory
WORKDIR ./usr/app
#faccio in modo di copiare il file json per avere l'elenco delle dipendenze da installare
COPY ./ ./
#installo le dipendenze
RUN npm install
#comando di default per farlo partire
CMD ["npm","start"]