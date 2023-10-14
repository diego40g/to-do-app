# Usa una imagen base con Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias del proyecto
RUN yarn install

# Copia todos los archivos del proyecto al directorio de trabajo
COPY . .

# Construye la aplicación React
RUN yarn build

# Expone el puerto 80 para que la aplicación pueda ser accedida
EXPOSE 3000

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD [ "yarn", "start" ]
