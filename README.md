# Product-Supply-Management
This project focuses on managing the product supply. The products can be supplied tocustomers based on the availability in the product warehouse. If the product is availablethen the order can be placed by the customer. The estimated delivery speed can beprovided to the customer according to their location.
User is the product supplier.USER stores name which has first name and lastname,unique id,phone number,email id,address.User have to login, LOGINrequires id, role id,username,password,user has different set of ROLES whichcontains name, id, description of the role.
User requires PERMISSION which requires id, role id, name and the module, userwhen received an order from customer checks or manages the INVENTORYthrough its unique id, items, number,type of order and description, Inventory hasSTOCK, which contain stock id, description and its types.
After the user manages to check inventory for stocks, user supply manages thePRODUCT which has a description of the product, id, customer id, items, numberand type of product.
User provides the customer two types of DELIVERY, the first type is normaldelivery which stores information like type of delivery, customer id, delivery date,unique delivery id and description.
One more type is EXPRESS DELIVERY based on MEMBERSHIP of the customerwhich contains the purchase date of membership,id,expiry date and details of thepurchase.
Express delivery has its unique id,description and delivery date.
