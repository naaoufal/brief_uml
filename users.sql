CREATE USER 'user_1'@'localhost' IDENTIFIED BY 'azer';
GRANT ALL PRIVILEGES ON * . * TO 'user_1'@'localhost';
FLUSH PRIVILEGES;

DROP USER 'user_1'@'localhost';
FLUSH PRIVILEGES;


CREATE USER 'user_2'@'localhost' IDENTIFIED BY '1234';
GRANT CREATE, SELECT ON * . * TO 'user_2'@'localhost';
FLUSH PRIVILEGES;