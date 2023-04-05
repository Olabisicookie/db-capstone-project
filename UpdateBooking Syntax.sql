DELIMITER $$
CREATE PROCEDURE UpdateBooking(IN p_BookingID INT, IN p_BookingDate DATE)
BEGIN
    UPDATE Bookings
    SET BookingDate = p_BookingDate
    WHERE BookingID = p_BookingID;
END $$
DELIMITER ;
