# Sequel Dev Test
### Introduction
A SQL script created to complete the exercise below.
### Exercise
The table shown below depicts a typical database with 4 tables in it. The questions on this test are based on these database structures.
### Tables
|       Customer       |       Invoice       |   LineItem   |      Product     |
|:--------------------:|:-------------------:|:------------:|:----------------:|
| Customer_ID (PK) Int | Invoice_No (PK) Int | Invoice_No   | Part_No (PK) Int |
| Name                 | Customer_ID (FK)    | LineItem_No  | Description      |
| Address              | Invoice_Date        | Part_No (FK) | Cost             |
| City                 | SubTotal            | Qty          | Qty_OH           |
| State                | Tax                 | Price        | Price            |
| Zip                  | Shipping            | Ext_Price    |                  |
| Phone                | Total               |              |                  |
| Fax                  |                     |              |                  |
### Questions
 1. Strictly speaking, the Invoice table contains two fields it shouldn’t. Identify the unnecessary fields.
 2. Write an SQL Statement to list all customers sorted by name.
 3. Marketing wants to target certain customers for a direct mailing. Write a query that lists all customers with the words “Little Rock” or “Bridgeport” in their city.
 4. Write an SQL statement that lists all invoices for customers located in CO,CA,AZ,MT,WY,WA,OR,ID, NM or UT, and the invoice date is within a specified date range known as TStart to TEnd.
 5. Write an SQL Statement to list the following items: Customer ID, Customer Name, number of invoices, sum of total for invoices. Ensure that all customers are returned in the result set.
 6. Write an SQL Statement to list the following items: Customer ID, Customer Name, Number of invoices, sum of total for invoices for all customers with more than $50,000 in total sales.
 7. Referential integrity constraints were accidentally destroyed for the relationship between the LineItem table and the Product table; as a result, parts were deleted from the product table that should not have been. Write a query that will list the distinct part numbers in the LineItem table that have no corresponding entry in the Product table.
 8. Research has determined that when product 1234 and 2345 are shipped together, product 2345 loses its potency. Write an SQL statement that lists all invoices that have both part numbers on the same invoice.
 9. Because of poor data entry policies there are a lot of duplicate customers in the database. Write a query that will list all customers where there exists another customer with the same phone number. Displayed fields should be: Customer Name, City, State, Phone, DupeCustomer Name, DupeCustomer City, DupeCustomer State, DupeCustomer Phone.
