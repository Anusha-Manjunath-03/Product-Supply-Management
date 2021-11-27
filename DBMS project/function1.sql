--Write a function to fetch the user details who have made changes to the table roles using their role_id

CREATE OR REPLACE FUNCTION get_user_details(Id integer)
RETURNS TABLE(UserId INTEGER, UserName VARCHAR, Mail VARCHAR) AS
$$
BEGIN
RETURN QUERY
SELECT Users.Users_id, Users.User_fname, Users.User_email
FROM Users WHERE Users.Users_id=
(SELECT Usernum FROM Roles WHERE Roles.Role_id=Id);
END; $$
LANGUAGE plpgsql;