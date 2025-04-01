
"#############################################################################################"
"####################################### MY SQL ##############################################"
"#############################################################################################"


" =====>  Show Databases "

show databases;



" =====> Change Specific Database"

use my_database;



" =====> Show Tables from Database"

show tables;



" =====> Show Table Structure" 

describe my_table;



" =====> Show Columns from specific Table Structure" 

show columns from my_table;


"****************************************** QUERIES SECTION ****************************************************"
"***************************************************************************************************************"


" =====> Insert new register in Specific table" 

INSERT INTO `my_table` (`col_1`, `col_2`, `col_3`) VALUES (val_1, 'val_2', 'val_3');


" -> Example: User Table"

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `photo`, `description`) VALUES (NULL, 'juanm@example.com', '[\"ROLE_USER\"]', '123', 'foto.jpg', 'Hola Mundo');




"****************************************** MANAGE SECTION *****************************************************"
"***************************************************************************************************************"


" =====> Create My Admin PHP " 

create user 'jdelgado'@'%' identified by '1324'