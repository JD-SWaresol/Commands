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

 ~ SELECT * FROM Customers WHERE Customer_name='John';

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
// "======> SELECT QUERY ORDER BY ============================================================="
// "==========================================================================================="

 ~ SELECT <column1>, <column2>, ... FROM <table_name> ORDER BY <column1>, <column2>, ... ASC|DESC; 



" =====> Example ORDER BY"

 ~ SELECT * FROM Products ORDER BY Price;

" =====> ORDER BY DESC"

 ~ SELECT * FROM Products ORDER BY Price DESC;

" =====> ORDER BY DESC - MANY COLUMNS"

 ~ SELECT * FROM Customers ORDER BY Country, CustomerName;



// "==========================================================================================="
// "======> THE SQL 'AND' OPERATOR ============================================================"
// "==========================================================================================="


" =====> The AND operator is used to filter records based on more than one condition. All Conditions Must Be True!!!"

 ~ SELECT <column1>, <column2>, ... FROM <table_name> WHERE <condition1> AND <condition2> AND <condition3> ...; 




" =====> Select all customers from Spain that starts with the letter 'G':"

 ~ SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%';




// "==========================================================================================="
// "======> THE SQL 'OR' OPERATOR ============================================================="
// "==========================================================================================="

" =====> The OR operator displays a record if any of the conditions are TRUE"
 
 ~ SELECT <column1>, <column2>, ... FROM <table_name> WHERE <condition1> OR <condition2> OR <condition3> ...;



" =====> Select all customers from Germany or Spain:"

 ~ SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';




" =====> Combining AND and OR"

" The following SQL statement selects all customers from Spain that starts with a "G" or an "R"."

 ~ SELECT * FROM Customers WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%'); 



" Without parenthesis, the select statement will return all customers from Spain that starts with a "G", plus all customers that starts with an "R", regardless of the country value:"

 ~ SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';




// "==========================================================================================="
// "======> THE SQL 'NOT' OPERATOR ============================================================"
// "==========================================================================================="

" =====> The NOT operator is used in combination with other operators to give the opposite result"

 ~ SELECT <column1>, <column2>, ... FROM <table_name> WHERE NOT <condition>;




" =====> Example: Select only the customers that are NOT from Spain:"

 ~ SELECT * FROM Customers WHERE NOT Country = 'Spain';


 " =====> NOT LIKE: Select customers that does not start with the letter 'A':"

 ~ SELECT * FROM Customers WHERE CustomerName NOT LIKE 'A%';


 " =====> NOT BETWEEN: Select customers with a customerID not between 10 and 60:"

 ~ SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60;


 " =====> NOT IN: Select customers that are not from Paris or London:"

 ~ SELECT * FROM Customers WHERE City NOT IN ('Paris', 'London');


 " =====> NOT Greater Than: Select customers with a CustomerId not greater than 50:"

 ~ SELECT * FROM Customers WHERE NOT CustomerID > 50;


 " =====> NOT Less Than: Select customers with a CustomerID not less than 50:"

 ~ SELECT * FROM Customers WHERE NOT CustomerId < 50;