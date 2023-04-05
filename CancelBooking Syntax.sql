DELIMITER $$
CREATE PROCEDURE CancelBooking(IN p_BookingID INT)
BEGIN
    DELETE FROM Bookings WHERE BookingID = p_BookingID;
    SELECT CONCAT('Booking with ID ', p_BookingID, ' has been canceled.') AS 'Cancellation Status';
END $$
DELIMITER ;



