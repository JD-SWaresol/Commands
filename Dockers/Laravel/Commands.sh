"#############################################################################################"
"####################################### DOCKER LARAVEL ######################################"
"#############################################################################################"

" =====>  Craete a new Laravel project "

SITENAME=chirper; docker run --rm --interactive --tty \
  --volume $PWD:/app \
  --user $(id -u):$(id -g) \
  composer create-project laravel/laravel $SITENAME 11.0 \
  && cd $SITENAME \
  && lando init --source cwd --webroot ./public --recipe laravel --name $SITENAME \
  && code .
    