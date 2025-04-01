"#############################################################################################"
"####################################### LINUX COMMANDS ######################################"
"#################################### Environment Variables ##################################"
"#############################################################################################"

//REF: https://www.cherryservers.com/blog/how-to-set-list-and-manage-linux-environment-variables


"*********************** How to list Linux environment variables? *************************"
"******************************************************************************************"


" =====> List all your current Linux environment variables by running the command without any options or parameters."

printenv

//NOTE: "You can also use printenv to display individual environment variables. Example: If you want to display your shell’s current working directory."

printenv PWD




" =====> The env command can list all environment variables with output similar to printenv. "

//NOTE: "List all your Linux environment variables, run the command with no options or parameters"

env




" =====>  Set Environment Variable "

export $env_var="env_var"




" =====>  Show message inside terminal "

echo "My message"




" =====>  Show environment variable inside terminal "

echo $env_var




" =====>  Show message with enviroment variable inside terminal "

echo "My new directory is " $my_directory




" =====> Confirm that the environment variable was created "

prntenv $env_var




"****************************** CREATE Shell Variable *************************************"
"******************************************************************************************"

" =====> Create a shell variable"

COOLSERVER='Cherry'




" =====> Confirm the variable value"

echo $COOLSERVER

// NOTE: The output should be: Cherry




" =====> Confirm the variable is not a environment variable"

printenv COOLSERVER

//NOTE: "Because the variable isn't an environment variable, there should be no output".




" =====> Covert a Shell Variable to an Envirnment Variable"

// "We can convert the variable from the previous example to an environment variable"

export COOLSERVER

//NOTE: "If we use 'printenv' command, should print Cherry as the output"





"***************** Linux Shell Variables vs Linux Environment Variables *******************"
"******************************************************************************************"

// "The key difference between Linux shell variables and Linux environment variables is: shell variables are not shared with a shell’s child processes, 
environment variables are shared with a shell's child processes."

// "Example with a simple bash:"


// "First, create a variable named CLOUD and set the value to Cherry Servers!."

CLOUD='Cherry Servers!'


// "Next, use the echo command to display the variable."

echo $CLOUD


// The output shows this:

$~ Cherry Servers!



// "If we create a test.sh bash script that includes the same command"

#!/bin/bash
echo $CLOUD



// "Make the script executable with this command:"

chmod +x test.sh



// "Now, run the script:"

./test.sh



// "The output should be blank, like this:"

$~ 



// "The reason the output is blank is because $CLOUD is a shell variable. It is contained within the current shell instance. 
Meanwhile, the test.sh script initiates a new process,and, since the $CLOUD environment variable is not set, the script doesn’t print anything."




// "Let’s make $CLOUD an environment variable with this command (note do NOT use the $ before the variable name):"

export CLOUD




// "Now, run the test.sh script again."

./test.sh




// "You should see this output:"

$~ Cherry Servers!





"********************** How to Delete Linux Environment Variables *************************"
"******************************************************************************************"


// "If we need to unset a environment variable, use this command:"

unset COOLSERVER




// "To confirm the variable is now deleted, execute this command:"

printenv COOLSERVER




// "Because the variable isn’t an environment variable, there should be no output:"

$~




"****************** How to Make Linux Environment Variables Permanent *********************"
"******************************************************************************************"

" =====> Use .profile to Make Environment Variables Permanent for Login Shells "

// "The environment variables we’ve created so far will only last for the duration of your shell session. If you log out or reboot, 
you would need to recreate them if you want to use them."

// "Fortunately, there are several ways to make Linux environment variables persist across different shell sessions."

// "The .profiile file exists in a user’s home directory. You can add environment variables for a user by editing their .profile file 
to include export commands to set environment variables."

// "For example, to make our COOLSERVER environment variable permanent for our current user, follow this process:"

// "
    1.- Change directory to the user’s home directory cd ~
    2.- Open .profile file in a text editor (e.g. nano, vi, vim, etc.)
    3.- Add the following line to the bottom of the file: export COOLSERVER='Cherry'
    4.- Save the changes
"

// "The changes will take effect on the next login. You can make them take effect for the current terminal using this command:"

. ~/.profile

//NOTE: "We need to run the lastone command to show environment variable inside '.profile' file"




" =====> Use .bashrc to Make Environment Variables Permanent for Non-login Interactive Shells "

// "For non-login shells, you can follow the same process as login shells, but instead of editing ~/.profile file, edit ~/.bashrc."

//NOTE: "We don't need to run '~/.bashrc' command each time, only when we set the value in '.bashrc' file "


" =====> Use /etc/environment to Make Environment Variables Permanent System-wide "

//¡¡¡WARNING: Any shell on the system can access system-wide variables, so set them with caution!!!!!.

// "To set system-wide Linux environment variables, you can edit the /etc/environment file. Instead of appending export commands to the file, 
append the <NAME>='<VALUE>' pair to the end of the file."

// "For example, to make our COOLSERVER environment variable permanent for the entire system, follow this process:"

// "
    1.- Change directory to the user’s home directory cd /etc
    2.- Open environment file in a text editor (e.g. nano, vi, vim, etc.)
    3.- Add the following line to the bottom of the file COOLSERVER='Cherry'
    4.- Save the changes
"