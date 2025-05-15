FROM node

# Crear folder
WORKDIR /app

# Copiar archivos
COPY package.json ./
COPY package-lock.json ./

# Correr desde json, Si no existe, se crea. Se utiliza cuando quieres ejecutar un contenedor mientras se construye la imagen
RUN npm install

# Copiar el resto de archivos
COPY index.js ./

# Exponer el puerto
EXPOSE 3000

# Correr el servidor, se ejecuta un comando cuando se inicia el contenedor
CMD ["node", "index.js"]
