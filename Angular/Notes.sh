"#############################################################################################"
"####################################### Lando Section #######################################"
"#############################################################################################"

" =====> Use Angular Inside .lando.yml "

-// I have a "recipe" here if anyone can use it:

name: <project>
excludes
  - ./node_modules
services:
  angular:
    type: node
    command: npm run start
    port: 4200
    ssl: true
proxy:
  angular:
    - <project>.lndo.site:4200
tooling:
  npm:
    service: angular
    command: npm

-// Inside you package.json you should have a script called "start" with this value

ng serve --host 0.0.0.0 --disable-host-check





"#############################################################################################"
"####################################### Symfony Project #####################################"
"#############################################################################################"

" =====> Crear un nuevo proyecto Symfony con Angular" 

1.- Luego de generar el proyecto con generate_S.sh agregar las configuraciones npm dentro del archivo '.lando.yml' con el apartado de tooling

2.- Ejecuta : lando restart

3.- Ingresar al directorio 'app' y ejecuta el siguiente comando para crear el archivo de configuración '.httacess':

        lando composer require symfony/apache-pack

4.- Probar que se este ejecutando Symfony de manera correcta

5.- Ingresar al directorio raíz del proyecto

6.- Ejecutar el siguiente comando dentro del directorio raíz del proyecto

        lando npm install -g @angular/cli@17

7.- Ejecuta : lando restart

8.- Genera un nuevo proyecto angular dentro del directorio raíz, ejemplo:

        lando ng new 'NuevoProyecto'

9.- Probar que el apartado angular del proyecto este funcionando de manera apropiada. Ingresar a 'http://localhost:4200'.

10.- Ingresar la URL en '.lando.yaml' del nuevo servicio de tipo Angular con el puerto 4200 correspondiente. Ejemplo:

        proxy:
            node:
                - hostname: app.my-first-laravel-c-test-env.lndo.site:4200

11.- Ejecuta : lando restart en directorio raíz del proyecto

12.- Probar que las URL del proyecto este respondiendo con un 200 OK





"#############################################################################################"
"####################################### Observaciones Angular ###############################"
"#############################################################################################"

  - HREF #id al header del titulo dentro de cada uno de los elementos de Categories para que suba pantalla.
	- Colocar un carrusel dentro del main para los elementos listados.


pull request -> Merge

git hub actions -> Documentacions

Copilot -> Revisar





"#############################################################################################"
"####################################### Referencias Angular #################################"
"#############################################################################################"


//URL: https://github.com/lando/lando/issues/1752