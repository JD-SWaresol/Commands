"#############################################################################################"
"############################### LANDO LARAVEL -> ELOQUENT ###################################"
"#############################################################################################"


URL: https://laravel-com.translate.goog/docs/12.x/eloquent?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc#generating-model-classes



"+" "Eloquent es un mapeador de objeto relacional (ORM) el cual facilita la interacción con la
    base de datos. Cada tabla de la base de datos tiene un <modelo> correspondiente para su 
    interacción. Esto permite una gestion con las tablas desde el proyecto donde esta alojado
    el modelo"

"+" "Los modelos se generan dentro de <app/Models>"

" =====> Generar Clases de Modelos"

php artisan make:model Flight


" =====> Migración de Base de Datos al generar un modelo: --migration | -m "

 php artisan make:model Flight --migration 


" =====> Se pueden generar modelos con clases de tipo Factory, Seeder, Controller y Policy"

# Generate a model and a FlightFactory class...

php artisan make:model Flight --factory

php artisan make:model Flight -f


# Generate a model and a FlightSeeder class...

php artisan make:model Flight --seed

php artisan make:model Flight -s


# Generate a model and a FlightController class...

php artisan make:model Flight --controller

php artisan make:model Flight -c


# Generate a model, FlightController resource class, and form request classes...

php artisan make:model Flight --controller --resource --requests

php artisan make:model Flight -crR


# Generate a model and a FlightPolicy class...

php artisan make:model Flight --policy


# Generate a model and a migration, factory, seeder, and controller...

php artisan make:model Flight -mfsc


# Shortcut to generate a model, migration, factory, seeder, policy, controller, and form requests...

php artisan make:model Flight --all

php artisan make:model Flight -a
              

# Generate a pivot model...

php artisan make:model Member --pivot

php artisan make:model Member -p



" =====> Inspección de Modelos : model:show ."
"+" "Se usa para proporcionar una visión general de todos los atributos y relaciones de un modelo"

php artisan model:show Flight



" =====> Convenciomnes del modelo Eloquent"

"+" "Los modelos generados por el make:modelcomando se guardarán en el app/Modelsdirectorio. 
    Examinemos una clase de modelo básica y analicemos algunas de las convenciones clave de Eloquent:"

<?php

    namespace App\Models;
    
    use Illuminate\Database\Eloquent\Model;
    
    class Flight extends Model
    {
        // ...
    }
?>

" =====> Nombres de tablas"

"+" "Eloquent asumirá que el Flightmodelo almacena registros en la flightstabla, mientras que un 'AirTrafficControllermodelo' 
    almacenaría registros en una 'air_traffic_controllerstabla'."

<?php
    
    ...

    class Flight extends Model
    {
        /**
         * The table associated with the model.
         *
         * @var string
        */
              
        protected $table = 'my_flights';
              
    }
?>