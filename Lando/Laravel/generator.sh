
echo " ***********************************"
echo " ******* New Laravel Project *******"
echo " ***********************************"
echo
echo

echo " ----- Step 01: Read variables -----"

export directory_name="generated_D_Test_env"
export project_name="my-first-laravel-d-test-env"
export app_name="app"

echo "First : " $directory_name . " variable name"
echo $project_name
echo $app_name

echo " ----- Step 02: Create Directory -----"

mkdir $directory_name
cd $directory_name

echo " ----- Step 03: Lando Init -----"

lando init \
--source cwd \
--recipe laravel \
--webroot app/public \
--name $project_name

echo " ----- Step 04: First Start -----"

lando start

echo " ----- Step 05: Create Project -----"

lando composer create-project laravel/laravel $app_name

echo " ----- Step 06: Restart -----"

lando restart