--Write a function to fetch the id  of the user who is the Administrator

CREATE OR REPLACE FUNCTION role_admin(userrole integer)
RETURNS TABLE(Role_id INTEGER,Role_name VARCHAR,Usernum INTEGER)AS
$$
BEGIN
RETURN QUERY
SELECT Roles.Role_id,Roles.Role_name,Roles.Usernum
FROM Roles WHERE Roles.Role_id=
(SELECT Usernum FROM Roles WHERE Roles.Role_id=111);
END; $$
LANGUAGE plpgsql;
