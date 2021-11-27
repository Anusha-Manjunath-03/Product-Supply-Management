import psycopg2

try:
    ps_connection = psycopg2.connect(user="postgres",
                                     password="1234",
                                     host="::1",
                                     port="5432",
                                     database="productsupply")

    cursor = ps_connection.cursor()

    # call function
    cursor.callproc('get_user_details', [131, ])

    print("\nFetching User details who pushed changes\n")
    result = cursor.fetchall()
    for row in result:
        print("Id = ", row[0], )
        print("Name = ", row[1])
        print("Email Address  = ", row[2])

except (Exception, psycopg2.DatabaseError) as error:
    print("Error while connecting to PostgreSQL", error)

finally:
    # closing database connection.
    if ps_connection:
        cursor.close()
        ps_connection.close()
        print("\nPostgreSQL connection is closed")
