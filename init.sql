CREATE ROLE restricted_role NOLOGIN;

CREATE ROLE login_role WITH LOGIN PASSWORD 'parolparol';
GRANT restricted_role TO login_role;
