#Contenedor: Entorno asilado donde existen todas las dpeendendicias necesarias para ejecutar una aplicacion
#Hello-world, imagen: serie de instrucciones para levantar o crear un contenedor 
#Imagen --- Clase (Persona)
#Contenedor --- Objeto (Persona(Instancia)) espacio aislado
#Las imaemes viven en un repositorio de imagenes (Container Registry) Docker Hub
#https://hub.docker.com/
docker container run hello-world

#Listar contendores
docker container ls -a


#Crear contenedor que persista en el tiempo y esponga un puerto
#Izquierdo: puerto del host (maquina fisica)
#Derecho: puerto del contenedor
docker container run -d -p 8081:80 docker/getting-started

#Levantar pagina web con informacion 
#http://localhost:8081/tutorial/

#Detener contenedor
docker container stop <container_id o nombre>

#Eliminar contenedor
docker container rm <container_id>

#Eliminar contenedor forzosamente
docker container rm -fv <container_id>

#Iniciar contenedor que ya existe
docker container start <container_id> o <nombre>

#Crear contenedor con nombre Ubuntu
docker container run --name MaquinaVirtualUbuntu ubuntu

#Correr un comando para mantenerse prendido
docker container run --name MaquinaVirtualUbuntu ubuntu bash 
docker container run --name MVU ubuntu sleep 3600

#Entrar a un contenedor
docker container exec -it <container_id o nombre> <comando incio>
docker container exec -it MaquinaVirtualUbuntu bash

#Salir
exit

#NGNIX - Servidor web
docker container run -d -p 8080:80 nginx


#CREATE IMAGEN
#Dockerfile: Archivo de texto que contiene todas las instrucciones para crear una imagen
npm init -y

#Crear Index.js
#Instalar modulo express - servidor sudo npm install express
#Crear Dockerfile


# Crear imagen
docker build -t node-api:1.0 .
docker container run --name MyApi -d -p 3001:3000 node-api:1.0

#My sql
docker container run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql:8

#Logs
docker logs <container_id>

#Contwnwsiews aw    yws T AW Cn
#Volum3n3s pwemirw insertar una usb y guardar lainformacion del contendero en el volumen cuando es destruido
#Volumenes Bind Volume / Volumenes Administrados
#Bind mapear una carpeta
docker volume ls

#Crear volumen
docker volume create <nombre_volumen>
docker volume create 411_mysqldb

docker container run --name MySQL3 -e MYSQL_ROOT_PASSWORD=12345 -v 411_mysqldb:/var/lib/mysql -dp 3308:3306 mysql:8

docker container run --name MYSQL4 -e MYSQL_ROOT_PASSWORD=12345 -v ./data:/var/lib/mysql -dp 3310:3306 mysql:8

#Conectar contenedores
#Networks
docker network -h

#Listar network - bridge permite conectar contenedores 
docker network ls

#Crear network
docker network create <nombre_red>

docker container run -d --name box1 -d alpine sleep 3600 

#revisar si hay conexion
docker exec -it box1 sh
/# ping box2

#Conectar un contenedor a una red
docker network connect <nombre_red> <container_id o nombre>

#Ver que contenedores estan en la red
docker network inspect <nombre_red>

#Loggin
docker login -u <usuario> -p <password>
docker login -u fernandaballesteros -p 123456789

#1. Se crea la apliacion

#2. Se crea el dockerfile
#3. Se crea la imagen
docker build -t <nombre_imagen>:<version> .
# docker build -t fernandaballesteros/docker-fundamentals:v1 .
docker build -t fernnandaballesteros/docker-fundamnetals:v1 .

#4. Publicar la imagen
docker push fernandaballesteros/docker-fundamnetals:v1

#Iniciar repositorio
git init

git add .
git commit -m "Primer commit"

#MATCH
git remote add origin <url_repositorio>
git push origin main