"#############################################################################################"
"####################################### LANDO LARAVEL #######################################"
"#############################################################################################"

" =====>  Lando Init "

lando init \
--source cwd \
--recipe laravel \
--webroot app/public \
--name $project_name



" =====> Lando Create Project"

lando composer create-project laravel/laravel $app_name



" =====> Lando Start Project "

lando start



" =====> Lando Restart Project " 

lando restart




"#############################################################################################"
"####################################### LANDO LARAVEL -> Breeze #############################"
"#############################################################################################"

lando start  

lando composer require laravel/breeze --dev
 
lando artisan breeze:install blade

lando npm run build

lando artisan route:list




lando artisan make:model -mrc Chirp

lando artisan migrate:fresh





// Nos da acceso a poder realizar consultas o actrualizaciones a la base de datos

lando artisan tinker
App\Models\Chirp::all();


lando artisan make:policy ChirpPolicy --model=Chirp

lando artisan make:notification NewChirp




"#############################################################################################"
"####################################### LANDO LARAVEL -> Intertia - Vue #####################"
"#############################################################################################"


lando start  

lando composer require laravel/breeze --dev

lando artisan breeze:install vue

lando npm i vue

lando npm run build





"#############################################################################################"
"####################################### LANDO LARAVEL -> Intertia - Rct #####################"
"#############################################################################################"


lando start  

lando composer require laravel/breeze --dev

lando artisan breeze:install react

lando npm i react

lando npm run build

EXTRA: lando npm install dayjs




"#############################################################################################"
"####################################### LANDO LARAVEL -> Livewire - Class ###################"
"#############################################################################################"


lando start  

lando composer require laravel/breeze --dev

lando artisan breeze:install livewire

lando npm install -D tailwindcss@latest postcss@latest autoprefixer@latest

lando npm run build




"#############################################################################################"
"####################################### LANDO LARAVEL -> Livewire - Funct ###################"
"#############################################################################################"


lando start  

lando composer require laravel/breeze --dev

lando artisan breeze:install livewire-functional

lando npm install -D tailwindcss@latest postcss@latest autoprefixer@latest

lando npm run build