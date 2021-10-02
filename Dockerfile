FROM alpine:3.11  
ENV NODE_VERSION 16.10.0

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./
# o * é pra o copy copiar (dã) todos os packages # 

#RUN npm install << não funciona nos alpines depois do 3.8 
RUN apk add --update npm
RUN npm install express

COPY . .

EXPOSE 3000

CMD  ["npm", "run", "dev" ]    
# no lugar de start pode ser RUN ... mas o looping é certo. 