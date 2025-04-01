"#############################################################################################"
"####################################### LINUX COMMANDS ######################################"
"######################################## Manage Files #######################################"
"#############################################################################################"


//REF: https://www.hostinger.com/tutorials/linux-commands?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:MX-EN&utm_medium=ppc&gad_source=1&gclid=EAIaIQobChMI2reHusGHjAMVWY_uAR3QQiJXEAAYASAAEgIMqvD_BwE

//REF: https://www.scaler.com/topics/untar-command-in-linux/


"********************************** touch command *****************************************"
"******************************************************************************************"


" =====>  Create a new empty file in a specific directory "

touch [options] [path_and_file_name]


//NOTE: "If you omit the path, the touch command will create a new file in your current working directory. Here’s an example:"

touch file.txt




"*********************************** file command *****************************************"
"******************************************************************************************"

" =====> The file command checks a file type, such as TXT, PDF, or other. The syntax is as follows:"

file [file_name]




"******************************* zip and unzip commands ***********************************"
"******************************************************************************************"

" =====> Compresses one or multiple files into a ZIP archive, reducing their size"

zip [options] [new zip_file_name] file1 file2




" =====> To extract a compressed file into your current working directory, use the unzip command like so:"

unzip [options] [zip_file_name]




"************************************* tar command ****************************************"
"******************************************************************************************"

" =====> The tar command bundles multiple files or directories into an archive without compression. "

tar [options] tar_file_name file1 file2

//NOTE: This is an Example:

tar -cf [Folder_name].tar foo bar




" =====> To extract a compressed file into your current working directory, use the unzip command like so:"

tar -xf [Folder_name].tar

//NOTE: "Don't ask you if you want to replace files!!! Check the files where you untar the content!!!"




" =====> Untar with verbose mode"

tar -xvf [Folder_name]].tar

//NOTE: List and show the extracted content





"******************************** nano,vi and jed command *********************************"
"******************************************************************************************"

" =====> The nano, vi, and jed commands let you edit files."

// "They have the same syntax, except at the beginning, where you specify the name of the tool:"

nano/vi/jed file_name

// "If the target file doesn’t exist, these commands will create a new one."





"******************************* cat (concatenate) command ********************************"
"******************************************************************************************"

" =====> Print the content of a file"

cat file_name




" =====> Print the content in REVERSE order (only paragraphs)"

tac file_name




" =====> Create a new file using '>' "

cat > file_name.*

//NOTE: "Later to have executerd this command maybe is necessary make 'Ctrl + C' because could freeze the terminal"




" =====> Combine the content of multiple files into a new item"

cat file1.txt file2.txt > target.txt





"************************************ grep command ****************************************"
"******************************************************************************************"

" =====> Global regular expression print or grep lets you search specific lines from a file using keywords"

grep [options] keyword [file]





" =====> You can also filter data from another utility by piping it to the grep command."

// "For example, the following searches file.txt from the ls command’s output:"

ls | grep "file.txt"

// "It's not necessary complete the file name, for example you can use 'Fil' to find Files.sh"