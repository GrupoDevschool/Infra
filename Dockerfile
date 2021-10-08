FROM alpine:3.11  
ENV NODE_VERSION 16.10.0

# Update
RUN apk add --update nodejs

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./
# o * é pra o copy copiar (dã) todos os packages # 


#RUN npm install << não funciona nos alpines depois do 3.8
#RUN apk add --update npm
RUN apk add --update nodejs nodejs-npm
RUN npm install express
#RUN npm start

COPY . .

EXPOSE 3000

CMD  ["npm", "run", "dev" ]
# então.. aqui eu descobri que RUN não e a mesma coisa que run ... cuidado ao reproduzir isso 