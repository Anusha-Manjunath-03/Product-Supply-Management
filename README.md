# Product-Supply-Management
This project focuses on managing the product supply. The products can be supplied to customers based on the availability in the product warehouse. If the product is available then the order can be placed by the customer. The estimated delivery speed can be provided to the customer according to their location.
User is the product supplier.USER stores name which has first name and lastname,unique id,phone number,email id,address.User have to login, LOGIN requires id, role id,username,password,user has different set of ROLES which contains name, id, description of the role.
User requires PERMISSION which requires id, role id, name and the module, user when received an order from customer checks or manages the INVENTORY through its unique id, items, number,type of order and description, Inventory hasSTOCK, which contain stock id, description and its types.
After the user manages to check inventory for stocks, user supply manages the PRODUCT which has a description of the product, id, customer id, items, number and type of product.
User provides the customer two types of DELIVERY, the first type is normal delivery which stores information like type of delivery, customer id, delivery date,unique delivery id and description.
One more type is EXPRESS DELIVERY based on MEMBERSHIP of the customer which contains the purchase date of membership,id,expiry date and details of the purchase.
Express delivery has its unique id,description and delivery date.
