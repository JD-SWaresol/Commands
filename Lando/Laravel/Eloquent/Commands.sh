"#############################################################################################"
"############################### LANDO LARAVEL -> ELOQUENT ###################################"
"#############################################################################################"

"+" "Eloquent es un mapeador de objeto relacional (ORM) el cual facilita la interacción con la
    base de datos. Cada tabla de la base de datos tiene un <modelo> correspondiente para su 
    interacción. Esto permite una gestion con las tablas desde el proyecto donde esta alojado
    el modelo"

"+" "Los modelos se generan dentro de <app/Models>"

" =====> Generar Clases de Modelos"

 ~ php artisan make:model Flight


" =====> Migración de Base de Datos al generar un modelo: --migration | -m "

 ~ php artisan make:model Flight --migration 


" =====> "