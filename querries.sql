//NAME:ANKIT BAJAJ//
//STUDENT_NO:(8622588)//

ASSIGNEMENT 2

part 1:

//query 1*//

  SELECT OrderNumber, (QuotedPrice*QuantityOrdered) As revenue FROM order_details	

//query 2*//

 SELECT EmpFirstName,TIMESTAMPDIFF(year,EmpBirthDate,CURRENT_DATE()) AS EmpBirthyear FROM   employees ORDER BY EmpBirthyear asc


part 2:

//query 1//

 SELECT * FROM employees WHERE EmpFirstName LIKE '%r%'AND EmpFirstName NOT LIKE '%q%'


part 4:
//query1 //

SELECT DISTINCT c.CustFirstName,c.CustPhoneNumber FROM customers AS c 
JOIN orders as O ON c.CustomerID = o.CustomerID JOIN order_details as od
ON o.OrderNumber =od.OrderNumber
JOIN products as p ON od.ProductNumber=P.ProductNumber
WHERE p.ProductName LIKE '%helmet'


//query 2//

SELECT  c.CustFirstName, e.EmpFirstName FROM customers
c JOIN employees e
ON c.CustFirstName = e.EmpFirstName

part 5:

//query1//

SELECT sum(ord.QuantityOrdered*ord.QuotedPrice*2) as "OR Account"
FROM order_details ord JOIN orders o 
ON ord.OrderNumber=o.OrderNumber
JOIN customers c ON o.CustomerID=c.CustomerID
WHERE c.CustState='OR'







