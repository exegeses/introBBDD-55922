# Preguntas y Respuestas

    nombre, apellido, idRol, rol, email, fechaNacimiento


SELECT nombre, apellido, usuarios.idRol, rol
    FROM usuarios, roles
    WHERE usuarios.idRol = roles.idRol
    AND email LIKE '%piedpiper%'

Insertar un usuario



INSERT INTO usuarios VALUES 
    (default, "Agustina", "Varela", "aguivarela@gmail.com", "dkjfl", 03, "2022-01-10", "1982-07-04", "2022-01-10");

INSERT INTO usuarios
Values (default, 'Marilyana', 'Cayones', 'a@gmail.com', '1234', 1, '2022-01-10', '1988-01-31', '2020-05-18');

INSERT INTO usuarios
(nombre,apellido,email,clave,idRol,fechaInicio,fechaNacimiento,fechaLogin)
VALUES
("agus","molina","agusmolina@gmail.com","agusm",4,'2022-01-10','2000-02-11','2022-01-10')

INSERT INTO usuarios 
VALUES 
(default, "Giuliana", "Pasqualini", "gp@hotmail.com", "qwerty", 4, "2020-01-28", "1999-02-25", "2021-08-02");


NSERT INTO usuarios
Values (default, 'Marilyana', 'Cayones', 'a@gmail.com', '1234', 1, '2022-01-10', '1988-01-31', '2020-05-18'),
(default, "Agustina", "Varela", "aguivarela@gmail.com", "dkjfl", 3, "2022-01-10", "1982-07-04", "2022-01-10"),
(default, "Agus","molina","agusmolina@gmail.com","agusm",4,'2022-01-10','2000-02-11','2022-01-10'),
(default, "Giuliana", "Pasqualini", "gp@hotmail.com", "qwerty", 2 , "2020-01-28", "1999-02-25", "2021-08-02"),
(default, "marcos", "pinardi", "mpinardi@yandex.com", "asdf", 2 , "2016-10-15", "1986-04-04", "2021-08-02"),
(default, "John", "galt", "jgalt@hotmail.com", "qwerty", 2 , "2018-08-21", "1995-06-20", "2021-08-02");


SELECT nombre, apellido, usuarios.idRol,  rol, email, fechaNacimiento
FROM  usuarios,roles
WHERE usuarios.idRol=roles.idRol
AND YEAR(fechaNacimiento) between 1986 AND 1990
ORDER BY  fechaNacimiento

select nombre, apellido, usuarios.idRol,  rol, email, fechaNacimiento
from usuarios,roles
where usuarios.idRol=roles.idRol
AND fechaNacimiento between '1986-01-01' AND '1990-12-31'
order by fechaNacimiento