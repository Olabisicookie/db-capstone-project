SELECT CourseName FROM MenuItems
INNER JOIN Menus ON MenuItems.MenuItemID = Menus.MenuItemID
WHERE MenuItems.MenuItemID IN (
  SELECT OrderItems.MenuItemID
  FROM OrderItems
  WHERE OrderItems.Quantity > 1
);