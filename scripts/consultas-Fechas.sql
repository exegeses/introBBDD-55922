-- Obtener listado de usuarios ordenadas por edad

SELECT nombre, apellido, email, idRol, fechaNacimiento
FROM prueba.usuarios
ORDER By fechaNacimiento;


-- Obtener listado de usuarios nacidos en 1998

SELECT nombre, apellido, email, idRol, fechaNacimiento
FROM usuarios
WHERE year( fechanaciemiento ) = 1998;


-- Obtener listado de usuarios que cumplen años en agosto

SELECT nombre, apellido, email, idRol, fechaNacimiento
    FROM usuarios
    WHERE MONTH( fechanacimiento ) = 08;

