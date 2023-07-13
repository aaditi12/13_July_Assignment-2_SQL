Question 1. Write an SQL query to retrieve the names and email addresses of all employees from a table named "Employees".

Solution:- select names, email_addresses
           from Employees;
           
Question 2. Write an SQL query to filter records from a table named "Customers" where the "City" column is 'New York'.

Solution:- select * from Customers
           where City='New York';

Question 3. Write an SQL query to sort records in descending order based on the "DateOfBirth" column in a table named "Users".

Solution:- SELECT * FROM Users
           ORDER BY DateOfBirth DESC;
           
Question 4. Write an SQL query to sort records in ascending order based on the "RegistrationDate" column in a table named "Users".

Solution:-  SELECT * FROM Users
           ORDER BY  RegistrationDate ASC;
           
Question 5. Write an SQL query to find the employee with the highest salary from a table named "Employees" and display their name, position, and salary.

Solution:- SELECT name,position, MAX(salary) AS "Highest salary"
           FROM Employees
           GROUP BY name; 
           
Question 6. Write an SQL query to retrieve records from a table named "Customers" where the "Phone" column matches the pattern '+1-XXX-XXX-XXXX'.

Solution:-   select * from Customers where Phone Like '+1-XXX-XXX-XXXX';

Question 7. Write an SQL query to retrieve the top 5 customers with the highest total purchase amount from a table named "Orders" and display their names and total purchase amounts.

Solution:- select names,MAX(SUM(purchase_amounts) As total_purchase_amounts) As Highest_total_purchase
           from Orders
           limit 5;
           
Question 8. Write an SQL query to calculate the percentage of sales for each product category in a table named "Sales" and display the category name, total sales amount, and the percentage of total sales.

Solution:-  select catergory_name,sales, sales*100/t.s As 'percentage of total sales'
            from Sales
            CROSS JOIN (SELECT SUM(sales) AS s FROM Sales) t
            groupby product_category;

Question 9. Write an SQL query to find the customers who have made the highest total purchases across all years from a table named "Orders" and display their names, email addresses, and the total purchase amount.

Solution:- select names,email_addresses,MAX(SUM(purchase_amounts) As total_purchase_amounts) As Highest_total_purchase
           from Orders
           group by years;


