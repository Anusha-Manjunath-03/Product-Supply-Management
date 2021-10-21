\c productsupply

INSERT into Login values(123,135,'ashish_patel','ashish12345');
INSERT into Login values(345,246,'ManasP007','manas007bond');
INSERT into Login values(678,791,'kiara_ram1403','kia1403');
INSERT into Login values(910,810,'Charlottesteve21','Charlotte200');
INSERT into Login values(101,882,'prateekm12','prateek888');

INSERT into Users values(113,'Ashish','Patel','ashishp@gmail.com','XYZ',9845237812);
INSERT into Users values(456,'Manas','Bhat','manasb@gmail.com','CDF',9324127722);
INSERT into Users values(789,'Kiara','Ram','kiarar01@gmail.com','ABC',9513236789);
INSERT into Users values(191,'Charlotte','Steven','charlottes@gmail.com','KLM',9867231299);
INSERT into Users values(112,'Prateek','Meher','prateekm@gmail.com','GHI',9966234511);

INSERT into Roles values(111,'Admin','administering organization’s access rights and profiles for products, Managing users
                         and  other product administrators',113);
INSERT into Roles values(121,'Supplier1','supplying consumer goods',456);
INSERT into Roles values(131,'Manager','responsible for both product planning and product marketing',789);
INSERT into Roles values(141,'Supplier2','supplying industrial goods',191);
INSERT into Roles values(151,'Supplier3','supplying consumer goods',112);

INSERT into Permission values(12,222,'Supervision','Admin',123,'ashish_patel');
INSERT into Permission values(10,234,'increasing or decreasing supplies','Supplier1',345,'ManasP007');
INSERT into Permission values(11,243,'addition or deletion of supplier','Manager',678,'kiara_ram1403');
INSERT into Permission values(14,256,'increasing or decreasing supplies','Supplier2',910,'Charlottesteve21');
INSERT into Permission values(15,269,'increasing or decreasing supplies','Supplier3',101,'prateekm12');

INSERT into Inventory values(200,11,'all electronic devices');
INSERT into Inventory values(201,13,'food items');
INSERT into Inventory values(202,16,'list of books');
INSERT into Inventory values(204,19,'raw materials');
INSERT into Inventory values(203,21,'manufactured parts');
INSERT into Inventory values(205,23,'cleaning supplies');
INSERT into Inventory values(207,29,'cosmetics');
INSERT into Inventory values(210,31,'supplies');


INSERT into Product values(1,20,'HP Desktop',11,200);
INSERT into Product values(3,17,'Lenovo Laptop',7,200);
INSERT into Product values(5,13,'Harry Potter',8,202);
INSERT into Product values(9,19,'Wings of Fire',62,202);
INSERT into Product values(10,16,'cotton raw material',23,204);
INSERT into Product values(22,18,'Ferrero Rocher',12,201);
INSERT into Product values(24,51,'Eureka Forbes  cleaner',13,205);
INSERT into Product values(29,18,'Aidea Microfibre cloth',54,205);
INSERT into Product values(25,78,'Lakhme Eyeliner',111,207);
INSERT into Product values(27,99,'Versace Crystal',90,207);
INSERT into Product values(88,101,'Mahavir Oil',2,210);

INSERT into Producttype values(1,'electronic device');
INSERT into Producttype values(3,'electronic device');
INSERT into Producttype values(5,'Book');
INSERT into Producttype values(9,'Book');
INSERT into Producttype values(10,'Raw material');
INSERT into Producttype values(22,'Food items');
INSERT into Producttype values(24,'Cleaning supply');
INSERT into Producttype values(29,'Cleaning supply');
INSERT into Producttype values(25,'Cosmetics');
INSERT into Producttype values(27,'Cosmetics');
INSERT into Producttype values(88,'Supplies');

INSERT into invtype values(200,'electronic devices');
INSERT into invtype values(201,'food items');
INSERT into invtype values(202,'Books');
INSERT into invtype values(204,'Raw materials');
INSERT into invtype values(203,'Manufactured parts');
INSERT into invtype values(205,'Cleaning supplies');
INSERT into invtype values(207,'Cosmetics');
INSERT into invtype values(210,'Oil-supplies');


INSERT into invitems values(200,('Desktop','Laptop','Mouse','Mobile phones','Keyboard','Tablets','Earphones'));
INSERT into invitems values(201,('Chips','Chocolates','Biscuits','Cereals','Drinks'));
INSERT into invitems values(202,('Fantasy','Journals','Thrillers','Horror','Autobiographies','Romantic novels'));
INSERT into invitems values(204,('Plant-based','Animal-based','Mining-Based'));
INSERT into invitems values(203,('Fabrication','Steel parts','Iron parts','Industrial'));
INSERT into invitems values(205,('Cleaning-Brushes','Acids','Sanitizers','Vaccum Cleaners','Cleaning_cloth'));
INSERT into invitems values(207,('Eyeliners','Foundation','Contour','Mascara','Moisturizer','Face_Cream'));
INSERT into invitems values(210,('Machine_oils','Grease'));

INSERT into Stock values(1230,'Lenovo Laptop',200);
INSERT into Stock values(1234,'Hp desktop',200);
INSERT into Stock values(1236,'Harry Potter',202);
INSERT into Stock values(1237,'Wings of Fire',202);
INSERT into Stock values(1232,'Cotton Raw material',204);
INSERT into Stock values(1238,'Lakhme Eyeliner',207);
INSERT into Stock values(1239,'Eureka Forbes cleaner',205);
INSERT into Stock values(1244,'Aidea Microfibre Cloth',205);
INSERT into Stock values(1233,'Mahavir oil',210);



INSERT into Stocktype values(1234,'electronic device');
INSERT into Stocktype values(1230,'electronic device');
INSERT into Stocktype values(1236,'Books');
INSERT into Stocktype values(1237,'Books');
INSERT into Stocktype values(1232,'Raw materials');
INSERT into Stocktype values(1238,'cosmetics');
INSERT into Stocktype values(1239,'cleaning supplies');
INSERT into Stocktype values(1244,'cleaning supplies');
INSERT into Stocktype values(1233,'oil-supplies');

INSERT into Membership values(78,'2021-09-10','6 months membership','2021-03-10');
INSERT into Membership values(79,'2021-10-11','3 months membership','2021-07-11');
INSERT into Membership values(87,'2021-11-17','12 months membership','2022-11-17');
INSERT into Membership values(89,'2021-12-19','1 month membership','2021-11-19');
INSERT into Membership values(91,'2021-12-24','6 months membership','2021-06-24');

INSERT into ExpressDelivery values(456,'electronic devices','2021-10-14',78);
INSERT into ExpressDelivery values(459,'cosmetics','2021-10-17',79);
INSERT into ExpressDelivery values(500,'electronic devices','2021-10-12',87);
INSERT into ExpressDelivery values(510,'books','2021-10-15',89);
INSERT into ExpressDelivery values(560,'electronic devices','2021-10-19',91);

INSERT into Delivery values(12,'2021-10-2',234,'electronic devices');
INSERT into Delivery values(13,'2021-10-12',236,'cosmetics');
INSERT into Delivery values(14,'2021-10-22',221,'electronic devices');
INSERT into Delivery values(15,'2021-10-24',241,'books');
INSERT into Delivery values(16,'2021-10-25',134,'cleaning supplies');





INSERT into Delivery_type values(12,'ss layout,davanagere,karnataka');
INSERT into Delivery_type values(13,'btm layout,7th main,10th cross,bangalore');
INSERT into Delivery_type values(14,'jp nagar 3rd main,6th cross,bangalore');
INSERT into Delivery_type values(15,'rt nagar,4th main,5th cross,bangalore');
INSERT into Delivery_type values(16,'ss complex,jail road,shimogga,bangalore');







