# Establece la imagen base de Node.js con la versión deseada
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json (o yarn.lock) al directorio de trabajo
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia todo el contenido del directorio actual al directorio de trabajo en el contenedor
COPY . .

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 8080

# Comando para iniciar la aplicación
CMD ["npm", "run", "start:prod"]