"#############################################################################################"
"####################################### LINUX COMMANDS ######################################"
"####################################### Manage Folders ######################################"
"#############################################################################################"


//REF: https://www.hostinger.com/tutorials/linux-commands?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:MX-EN&utm_medium=ppc&gad_source=1&gclid=EAIaIQobChMI2reHusGHjAMVWY_uAR3QQiJXEAAYASAAEgIMqvD_BwE


" =====> Lists the content of a folder, including files and directories" 

ls [options][directory_or_path]




" =====> Checks the full path of your current working directory" 

pwd [options]

// " -L option prints environment variable content.
     -P option will print the exact canonical path:"




" =====>  Change Directory "

cd $my_directory




" =====>  Returns to the current user’s home directory. "

cd




" =====>  Moves a directory up "

cd ..




" =====>  Moves two directories up"

cd ../..




" =====> Goes back to the previous directory. "

cd -





"********************************** mkdir command *****************************************"
"******************************************************************************************"


" =====>  Craete new Directory "

mkdir [options] directory_name




" =====>  Craete new Directory with Environment Variable"

mkdir [options] $directory_name




" =====>  Craete multiple directories"

mkdir [options] directory_name1 directory_name2




" =====> Create a folder in another location, specify the full path."

mkdir path/to/target_folder/[new_folder]




"********************************** rkdir command *****************************************"
"******************************************************************************************"

" =====> Run rmdir to delete empty directories in your Linux system."

rmdir [options] directory_name

//NOTE: "The rmdir command won’t work if the directory contains subfolders."




"************************************ rm command *****************************************"
"******************************************************************************************"

" =====> The rm command deletes files from a directory. You must have the write permission for the folder or use sudo."

rm [options] file1 file2


//NOTE: "You can add the -r option to remove a folder and its contents, including subdirectories."

rm [options] directory_name

// "-i flag to display a confirmation message before the removal
    -f to deactivate it completely"



"************************************* cp command *****************************************"
"******************************************************************************************"

" =====> Use the cp command to copy files from your current directory to another folder."

cp file1 file2 [target_path]




" =====> You can also use cp to duplicate the content of one file to another"

cp 'source_file' /path/to/[target_file]




" =====> Additionally, cp lets you duplicate a directory and its content to another folder using the -R option:"

cp -R /path/to/[folder] /target/path/to/[folder_copy]




"************************************* mv command *****************************************"
"******************************************************************************************"

" =====> The main usage of the mv command is to move a file or folder to another location"

mv file_or_directory [target_directory]



// "For example, we will move file1.txt from another location to the /new/file/directory path using this command:"

mv /original/path/file1.txt the/target/path




" =====> Use the mv command to rename files in your Linux system."

mv old_name.txt new_name.txt



// "If you specify the full path, you can simultaneously rename files and move them to a new location like this example:"

mv old/location/of/old_name.txt new/path/for/new_name.txt