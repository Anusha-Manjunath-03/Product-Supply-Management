drop database productsupply;
create database productsupply;

\c productsupply

CREATE TABLE Login
(	Login_id INT NOT NULL,
	Login_role_id INT,
	Login_username VARCHAR(500) NOT NULL,
	User_password VARCHAR(500) NOT NULL,
	PRIMARY KEY (Login_id, Login_username)			);


CREATE TABLE Users
(	Users_id INT NOT NULL,
	User_fname VARCHAR(500) NOT NULL,
	User_lname VARCHAR(500) NOT NULL,
	User_email VARCHAR(500),
	User_address VARCHAR(500),
	User_mobile BIGINT,
	PRIMARY KEY (Users_id)				);
	
CREATE TABLE Roles
(	Role_id INT NOT NULL,
	Role_name VARCHAR(500),
	Role_desc VARCHAR(500),
	Usernum INT NOT NULL,
	PRIMARY KEY (Role_id),
	FOREIGN KEY (Usernum) REFERENCES Users(Users_id) 		);
	
CREATE TABLE Permission
(	Per_id INT NOT NULL,
	Per_role_id INT NOT NULL,
	Per_module VARCHAR(500),
	Per_name VARCHAR(500) NOT NULL,
	Login_num INT NOT NULL,
	Login_nm VARCHAR(500) NOT NULL,
	PRIMARY KEY (Per_id),
	FOREIGN KEY (Login_num, Login_nm) REFERENCES Login(Login_id, Login_username)		);
	
CREATE TABLE Inventory
(	Inv_id INT NOT NULL,
	Inv_num INT NOT NULL,
	Inv_desc VARCHAR(500),
	PRIMARY KEY (Inv_id)			);
	
CREATE TABLE Product
(	Pro_id INT NOT NULL,
	Pro_cus_id INT NOT NULL,
	Pro_desc VARCHAR(500),
	Pro_num INT NOT NULL,
	In_id INT NOT NULL,
	PRIMARY KEY (Pro_id),
	FOREIGN KEY (In_id) REFERENCES Inventory(Inv_id));
	
CREATE TABLE Producttype
(	Pro_id INT NOT NULL,
	Pro_type VARCHAR(500) NOT NULL,
	PRIMARY KEY (Pro_id),
	FOREIGN KEY (Pro_id) REFERENCES Product(Pro_id)			);
	
	
CREATE TABLE Invtype
(	Inv_id INT NOT NULL,
	Inv_type VARCHAR(500) NOT NULL,
	PRIMARY KEY (Inv_id),
	FOREIGN KEY (Inv_id) REFERENCES Inventory(Inv_id)			);
	
CREATE TABLE Invitems
(	Inv_id INT NOT NULL,
	Inv_items VARCHAR(500) NOT NULL,
	PRIMARY KEY (Inv_id),
	FOREIGN KEY (Inv_id) REFERENCES Inventory(Inv_id)			);	

	
CREATE TABLE Stock
(	Stk_id INT NOT NULL,
	Stk_desc VARCHAR(500),
	Iid INT NOT NULL,
	PRIMARY KEY (Stk_id),
	FOREIGN KEY (Iid) REFERENCES Inventory(Inv_id)			);
	
CREATE TABLE Stocktype
(	Stk_id INT NOT NULL,
	Stk_type VARCHAR(500) NOT NULL,
	PRIMARY KEY (Stk_id),
	FOREIGN KEY (Stk_id) REFERENCES Stock(Stk_id)			);
	
CREATE TABLE Membership
(	Purchase_id INT NOT NULL,
	Expiry_date DATE NOT NULL,
	Purchase_details VARCHAR(500),
	Purchase_date DATE NOT NULL,
	PRIMARY KEY (Purchase_id)				);
	
CREATE TABLE Expressdelivery
(	Express_del_id INT NOT NULL,
	Del_desc VARCHAR(500),
	Express_del_date DATE NOt NULL,
	Pur_id INT NOT NULL,
	PRIMARY KEY (Express_del_id),
	FOREIGN KEY (Pur_id) REFERENCES Membership(Purchase_id)			);
	
CREATE TABLE Delivery
(	Del_id INT NOT NULL,
	Del_date DATE NOT NULL,
	Del_cus_id INT NOT NULL,
	Del_desc VARCHAR(500) NOT NULL,
	PRIMARY KEY (Del_id)			);
	
CREATE TABLE Delivery_type
(	Del_id INT NOT NULL,
	Del_location VARCHAR(50) NOT NULL,
	PRIMARY KEY (Del_id, Del_location),
	FOREIGN KEY (Del_id) REFERENCES Delivery(Del_id)				);
	
	

		
	