#Imagen
FROM node:18-alpine3.15

#Comando para crear la carpeta app
RUN mkdir app

#Establecemos el area de trabajo
WORKDIR /app

#Copiamos el contenido de nuestra caperta al contenedor
COPY . .

#Instalamos el proyecto
RUN npm install

#Exponemos el puerto del contenedor
EXPOSE 5173

#Iniciamos el proyecto con --host por que sin el no podemos acceder
CMD ["npm","run","dev","--","--host"]
