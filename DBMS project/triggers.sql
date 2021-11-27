--Trigger 1
--Create a trigger that adds the details of the information inserted to the delivery table to a new table notify 

CREATE TABLE Notify(
Delivery_date DATE NOT NULL,
Delivery_item VARCHAR(500) NOT NULL);

CREATE OR REPLACE FUNCTION add_del() RETURNS trigger AS $add$
BEGIN
INSERT INTO Notify
(Delivery_date,Delivery_item) values(new.Del_date,new.Del_desc);
RETURN NEW;
END;
$add$
language plpgsql;

CREATE TRIGGER add
AFTER INSERT
ON Delivery
FOR EACH ROW
EXECUTE PROCEDURE add_del();

INSERT INTO
Delivery
VALUES(17,'2021-11-28',509,'books');

INSERT INTO
Delivery
VALUES(18,'2021-11-30',120,'oil-supplies');

select * from Notify;




--Trigger 2
--Create a trigger that notifies when the inventory has been updated and sends a message via a table created to display message

CREATE TABLE message(
text VARCHAR(500));

CREATE OR REPLACE FUNCTION update_inv() RETURNS trigger as $inv_up$
BEGIN
INSERT INTO
message
(text) values('Inventory has been updated');
RETURN NEW;
END;
$inv_up$
language plpgsql;

CREATE TRIGGER inv_up
AFTER UPDATE
ON Inventory
FOR EACH ROW
EXECUTE PROCEDURE update_inv();


UPDATE Inventory
SET Inv_num=22
WHERE Inv_id = 210;

UPDATE Inventory
SET Inv_num=80
WHERE Inv_id = 202;

select * from message;




--Trigger 3
--Create a trigger that adds the user name when a new user is been added to the database



CREATE TABLE User_details(
fname VARCHAR(500),
lname VARCHAR(500));

CREATE OR REPLACE FUNCTION details() RETURNS trigger AS $det$
BEGIN
INSERT INTO User_details
(fname,lname) values(new.User_fname,new.User_lname);
RETURN NEW;
END;
$det$
language plpgsql;


CREATE TRIGGER det
AFTER INSERT
ON Users
FOR EACH ROW
EXECUTE PROCEDURE details();

insert into Users values(221,'Sanya','Shetty','sanya@yahoo.com','DFG',9125235108);

insert into Users values(705,'Dev','Kumar','dev_kumar@yahoo.com','KLD',8933335108);

select * from User_details;




--Trigger 4
--Create a trigger to raise an information when a new product is been added to the Product relation ensure that the product is added by checking whether pro_num > 0 



CREATE OR REPLACE FUNCTION ProductAdd() RETURNS TRIGGER AS $$
BEGIN
if NEW.Pro_num > 0 THEN
RAISE INFO 'A new product has been added';
END IF;
RETURN NULL;
END;
$$
LANGUAGE PLPGSQL;


CREATE TRIGGER Pro_add
AFTER INSERT
ON Product
FOR EACH ROW
EXECUTE PROCEDURE ProductAdd();

INSERT INTO Product VALUES(32,88,'Revlon Lipstick',20,205);
INSERT INTO Product VALUES(35,43,'Kajal',0,205);


--Trigger 5
--Create trigger that adds product when product has been updated and displays message through table created to display message.


CREATE TABLE msgs(
text VARCHAR(500));

CREATE OR REPLACE FUNCTION update_pro() RETURNS TRIGGER AS $pro_up$
BEGIN
INSERT INTO 
msgs
(text) VALUES('Product has been updates');
RETURN NEW;
END;
$pro_up$
LANGUAGE PLPGSQL;

CREATE TRIGGER prod_up
AFTER INSERT
ON Product
FOR EACH ROW
EXECUTE PROCEDURE update_pro();

INSERT INTO Product VALUES(35,129,'dark chocolate',21,201);

SELECT * from msgs;