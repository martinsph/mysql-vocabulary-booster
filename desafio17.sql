USE w3schools;

DELIMITER $$

CREATE TRIGGER OrderDate
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END

$$ DELIMITER ;
