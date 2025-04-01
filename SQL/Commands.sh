"#############################################################################################"
"######################################## SQL - COMMANDS #####################################"
"#############################################################################################" 


"================================ QUERY SECTION ==============================================="
"=============================================================================================="

// "==========================================================================================="
// "=====> BASIC SELECT QUERY ================================================================="
// "==========================================================================================="

 ~ SELECT <column1>, <column2>, ... FROM <table_name>;



" =====> Show each of the columns in a table"

 ~ SELECT * FROM <table_name>;



" =====> Show a registers count in a table"

 ~ SELECT COUNT(<column1>) FROM <table_name>;



" =====> Show all different values"

 ~ SELECT DISTINCT <column1>, <column2>, ...FROM <table_name>; 


//NOTE: Returns the number of different countries.

 ~ SELECT COUNT(DISTINCT Country) FROM Customers;



// "==========================================================================================="
// " =====> BASIC SELECT WHERE QUERY =========================================================="
// "==========================================================================================="

 ~ SELECT <column1>, <column2>, ... FROM <table_name> WHERE <condition>;


 " =====> Text Field"

 ~ SELECT * FROM Customers WHERE Customer_name="John";

" =====> Numeric Field" 

 ~ SELECT * FROM Customers WHERE CustomerID=1;
 ~ SELECT * FROM Customers WHERE CustomerID > 80;


 " =====> Operators Where"

    = 	        Equal 	
    > 	        Greater than 	
    < 	        Less than 	
    >= 	        Greater than or equal 	
    <= 	        Less than or equal 	
    <> 	        Not equal. Note: In some versions of SQL this operator may be written as != 	
    BETWEEN 	Between a certain range 	
    LIKE 	    Search for a pattern 	
    IN          To specify multiple possible values for a column



// "==========================================================================================="
// " =====> SELECT QUERY ORDER BY ============================================================="
// "==========================================================================================="

 ~ SELECT <column1>, <column2>, ... FROM <table_name> ORDER BY <column1>, <column2>, ... ASC|DESC; 



" =====> Example ORDER BY"

 ~ SELECT * FROM Products ORDER BY Price;

" =====> ORDER BY DESC"

 ~ SELECT * FROM Products ORDER BY Price DESC;

" =====> ORDER BY DESC - MANY COLUMNS"

 ~ SELECT * FROM Customers ORDER BY Country, CustomerName;