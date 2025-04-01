
echo " -----------------------------------"
echo " ------- New Symfony Project -------"
echo " -----------------------------------\n\n"

echo " ----- Step 01: Read variables -----"
export directory_name="generated_E8_Symfony_env"
export project_name="my-first-symfony-e8-test-env"
export app_name="app"



echo " ----- Step 02: Create Directory -----"
mkdir $directory_name
cd $directory_name



echo " ----- Step 03: Lando Init -----"
lando init \
--source cwd \
--recipe symfony \
--webroot . \
--name $project_name



echo " ----- Step 04: First Start -----"
lando start



echo " ----- Step 05: Create Project -----"
lando composer create-project symfony/website-skeleton $app_name


echo " ----- Step 07: Restart -----"
lando restart