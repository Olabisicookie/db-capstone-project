DELIMITER $$
CREATE PROCEDURE AddValidBooking (IN p_BookingDate DATE, IN p_TableNumber INT)
BEGIN
    DECLARE bookingCount INT;
    START TRANSACTION;
    
    -- Check if table is already booked
    SET bookingCount = (
        SELECT COUNT(*)
        FROM Bookings
        WHERE TableNumber = p_TableNumber
        AND BookingDate = p_BookingDate
    );
    
    IF bookingCount > 0 THEN
        -- Table is already booked, rollback transaction
        ROLLBACK;
        SELECT 'Table is already booked on the given date';
    ELSE
        -- Table is available, add new booking and commit transaction
        INSERT INTO Bookings (TableNumber, BookingDate)
        VALUES (p_TableNumber, p_BookingDate);
        COMMIT;
        SELECT 'Booking added successfully';
    END IF;
END $$
DELIMITER ;
