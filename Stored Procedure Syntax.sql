DELIMITER //
CREATE PROCEDURE GetMaxQuantity(OUT max_quantity INT)
BEGIN
    SELECT MAX(Quantity) INTO max_quantity FROM OrderItems;
END //
DELIMITER ;


CALL GetMaxQuantity(@max_quantity);
SELECT @max_quantity;
