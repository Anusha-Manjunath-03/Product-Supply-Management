import psycopg2
try:
    ps_connection = psycopg2.connect(user="postgres",
                                     password="anu123",
                                     host="::1",
                                     port="5432",
                                     database="productsupply")
    cursor=ps_connection.cursor()

    #Call function
    cursor.callproc('pro_inven',[200,])

    print("\nFetching all the products of inventory 200 \n")
    result=cursor.fetchall()
    for row in result:
        print("Inventory number:",row[0], )
        print("Product Id:",row[1], )
        print("Product Description:",row[2], )
       
    
except (Exception, psycopg2.DatabaseError)as error:
    print("Error while connecting to postgresql",error)
    
finally:
    #closing the database connection.
    if ps_connection:
        cursor.close()
        ps_connection.close()
        print("\nPostgresql connection is closed")
        
                                     