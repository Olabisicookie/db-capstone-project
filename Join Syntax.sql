SELECT DISTINCT Customers.CustomerID, Customers.FullName, Orders.OrderID, Orders.TotalCost, Menus.Cuisine, MenuItems.Category
FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
INNER JOIN MenuItems ON OrderItems.MenuItemID = MenuItems.MenuItemID
INNER JOIN Menus ON MenuItems.MenuItemID = Menus.MenuItemID
ORDER BY TotalCost ASC;