--  creates a trigger that decreases the quantity of an item after adding a new order.

CREATE TRIGGER update_quantity 
	AFTER INSERT 
	ON orders FOR EACH ROW 
BEGIN 
	UPDATE TABLE items
	SET quantity = (quantity - NEW.number)
	WHERE name = NEW.item_name;
END $$
