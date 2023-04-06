PREPARE GetOrderDetail FROM
'SELECT Orders.OrderID, OrderItems.Quantity, Orders.TotalCost 
FROM Orders 
INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
WHERE CustomerID = ?';

SET @CustomerID = 1;  

EXECUTE GetOrderDetail USING @CustomerID;

DEALLOCATE PREPARE GetOrderDetail;