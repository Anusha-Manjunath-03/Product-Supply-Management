--Write a function to display all the products that belong to inventory id 200.

CREATE OR REPLACE FUNCTION pro_inven(inv integer)
RETURNS TABLE(In_id INTEGER,Pro_id INTEGER,Pro_desc VARCHAR)AS
$$
BEGIN
RETURN QUERY
SELECT Product.In_id,Product.Pro_id,Product.Pro_desc
FROM Product WHERE Product.In_id=
(SELECT Inv_id FROM Inventory WHERE Inv_id=200);
END; $$
LANGUAGE plpgsql;
