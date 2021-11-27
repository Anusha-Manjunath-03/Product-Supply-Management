-- Simple queries

-- 1. A query to retrieve product id and product description of type = ‘Food items’

SELECT product.pro_id,pro_desc
FROM Product,Producttype
WHERE pro_type='Food items' AND producttype.pro_id=product.pro_id;

-- 2. Retrieve user email as mail_id, user’s address as address and mobile number as ph_no of users_id = 789

SELECT user_email as mail_id, user_address as address, user_mobile as ph_no
FROM users
WHERE users_id=789;

-- 3.Retrieve role name of an user named ‘Charlotte’
 
SELECT Role_name
FROM Roles,Users
WHERE User_fname='Charlotte' AND Usernum=Users_id;

-- 4. Display product description as Product and product number as availability from product table ordered by product number

SELECT Pro_desc as Product,Pro_num as Availability
FROM Product
ORDER BY Pro_num;

-- 5. Retrieve delivery description as product_to_deliver in between the delivery date 2-10-2021 and 12-10-2021

SELECT Del_desc as Product_to_deliver
FROM Delivery
WHERE Del_date BETWEEN '2021-10-2' AND '2021-10-12';

--6. Query to view products whose customer id is greater than 5.

select * from Product where pro_cus_id>5;

--7. Name all users whose name starts with letter ‘A’.

select user_fname from users where user_fname liks 'A%';

--8. Query to view stock available which has stock id less than 1235 and inventory id less than 205.

select * from stock where stk_id<1235 and iid<205;

--9. Query to view number of products whose product number is greater than 10.

select COUNT(*) from product where pro_num>10;

--10. Query to view product id numbers above 8 but not in (22,29).

select * from product where pro_id>8
except
select * from product where pro_id in (22,29);


-- Complex queries

-- 1. Display distinct pro_type of those products that are less than 20

SELECT DISTINCT Pro_type as products_less_than_20
FROM Producttype
WHERE EXISTS (SELECT Pro_desc
FROM Product
WHERE Producttype.Pro_id=Product.Pro_id AND Pro_num < 20);

-- 2. Display the permission names given to the user with per_id 10,14, and 15

SELECT Per_name
FROM Permission
WHERE Per_id IN (10,14,15);

-- 3. Display user_id, user_fname, user_lname and role_name from table users joined with roles

SELECT usr.users_id,usr.user_fname,usr.user_lname,role.role_name
FROM Users as usr
NATURAL JOIN Roles as role
WHERE Usernum=Users_id;

-- 4. Retrieve the count of stk_type grouped by stk_type

SELECT COUNT(Stk_type), Stk_type
FROM Stocktype
GROUP BY Stk_type;

-- 5. Create a column named quantityconclusion which displays ‘The quantity is less than 50’ if pro_num less than 50 and ‘The quantity is more than 50’ if pro_num is greater than and ‘The quantity is 50’ otherwise

SELECT Pro_id,Pro_num,
CASE
WHEN Pro_num > 50 THEN 'The quantity is greater than 50'
WHEN Pro_num < 50 THEN 'The quantity is less than 50'
ELSE 'The quantity is 50'
END AS QuantityConclusion
FROM Product;

--6. Retrieve details of all products which are present in stock.

select * from product p where EXISTS (select * from stock s where s.iid=p.in_id);

--7. Retrieve product description ,id and inventory id whose inventory id is less than maximum.


select pro_desc,pro_id,in_id from product where in_id in(select inv_id from invitems where inv_id<(select MAX(inv_id) from invitems));

--8. Query to retrieve distinct product description,inventory id from product which has id greater than 204.

select DISTINCT pro_desc,in_id from producy where in_id in(select DISTINCT inv_id from invtype where inv_id>204);

--9. Query to retrieve express delivery date and description of delivery from express delivery whose description is in the delivery table whose id is greater than 13.

select del_desc,express_del_date from expressdelivery where del_desc in(select del_desc from delivery where del_id>13);

--10. Query to retrieve permission names,login number which are present in both permission and roles

select per_name,login_num from permission p where EXISTS(select * from roles r where r.role_name=p.per_name); 