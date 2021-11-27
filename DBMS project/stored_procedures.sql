--Stored PROCEDURE 1
--Create a stored procedure using transactions to modify the changes made to the Delivery table


CREATE OR REPLACE PROCEDURE del_date_changes()
LANGUAGE PLPGSQL
AS
$$
BEGIN
UPDATE Delivery
SET Del_date='2021-11-12'
WHERE Del_id=14;
COMMIT;
END;
$$
;

CALL del_date_changes();

SELECT * FROM Delivery;

--Stored PROCEDURE 2
--Create a stored procedure on Membership table to insert values and use rollback to avoid the changes to reflect on the table

CREATE OR REPLACE PROCEDURE membership_insert()
LANGUAGE PLPGSQL
AS
$$
BEGIN
INSERT INTO Membership VALUES(55,'2021-10-31','3 months membership','2021-08-01');
INSERT INTO Membership VALUES(83,'2021-11-24','12 months membership','2021-11-24');
ROLLBACK;
END;
$$
;

CALL membership_insert();

SELECT * FROM Membership;