DELIMITER $$
CREATE PROCEDURE CheckBooking(IN p_BookingDate DATE, IN p_TableNumber INT)
BEGIN
    DECLARE bookingCount INT;
    SET bookingCount = (
        SELECT COUNT(*)
        FROM Bookings
        WHERE TableNumber = p_TableNumber
        AND BookingDate = p_BookingDate
    );
    IF bookingCount > 0 THEN
        SELECT CONCAT('Table ', p_TableNumber, ' is already booked on ', p_BookingDate);
    ELSE
        SELECT CONCAT('Table ', p_TableNumber, ' is available on ', p_BookingDate);
    END IF;
END $$
DELIMITER ;

