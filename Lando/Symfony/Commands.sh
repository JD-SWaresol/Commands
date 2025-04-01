"#############################################################################################"
"####################################### LANDO SYMFONY #######################################"
"#############################################################################################"

" =====>  Lando Init "

lando init \
--source cwd \
--recipe symfony \
--webroot . \
--name $project_name




" =====> Lando Init (another Option)"

SITENAME=friky-land; docker run --rm --interactive --tty \
  --volume $PWD:/app \
  --user $(id -u):$(id -g) \
  composer create-project symfony/website-skeleton $SITENAME \
  && cd $SITENAME \
  && lando init --source cwd --recipe symfony --webroot public --name $SITENAME \
  && code .




" =====> Lando Create Project"

lando composer create-project symfony/website-skeleton $app_name




" =====> Lando Twing extensions"

lando composer require annotations asset doctrine encore form logger maker profiler security security-guard stof/doctrine-extensions-bundle twig validator var-dumper




" =====> Lando Start Project "

lando start




" =====> Lando Restart Project " 

lando restart




" =====> Lando Symfony Commands " 

lando php bin/console




" =====> Lando Create or Edit Symfony Entity " 

lando php bin/console make:entity




" =====> Lando Create and Edit Symfony Entity User : Default" 

lando php bin/console make:entity User




" =====> Lando migrates Entities from Project to Data Base" 

lando php bin/console doctrine:schema:update --force




" =====> Lando Create New Controller" 

lando php bin/console make:controller




" =====> Lando Create New Controller Login : Default" 

lando php bin/console make:controller Login




" =====> Lando MYSQL -> Select query to DataTable" 


lando php bin/console dbal:run-sql 'select * from my_entity'




" =====> Lando Check Created Entity Project Routes" 

lando php bin/console debug:router




" =====> Lando KnpPaginatorBundle's Installation in project (Saves inside Vendor)"

lando composer require knplabs/knp-paginator-bundle




" =====> Update Symfony Version"

lando composer update "symfony/*" --with-all-dependencies


//NOTE: In my practice, was necessary update the 6.1 version to 6.4.13 version in Symfony
//REF: https://symfony.com/doc/current/setup/upgrade_major.html




" =====> Follow all registers (Web server, PHP and the app) -> It's useful to debug sessions"

lsymfony server:log