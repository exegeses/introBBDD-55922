-- Relaciones entre tablas
-----------------------
-- table relations
-----------------------
-- traemos los nombres de las marcas
-- están en el campo mkNombre

SELECT
    idProducto, prdNombre, prdPrecio,
    mkNombre, idCategoria, prdDescripcion, prdImagen, prdActivo
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca

-- traemos los nombres de las marcas
-- están en el campo mkNombre
-- y además traemos los nombres de las categorías
-- que están en el campo catNombre

SELECT
    idProducto, prdNombre, prdPrecio,
    mkNombre, catNombre, prdDescripcion, prdImagen, prdActivo
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria

--------------------------
--  JOIN (explicit)
--------------------------

-- traemos los nombres de las marcas
-- están en el campo mkNombre
SELECT prdNombre, prdPrecio, mkNombre
    FROM productos
    JOIN marcas
    ON marcas.idMarca = productos.idMarca

-- traemos los nombres de las marcas
-- están en el campo mkNombre
-- y además traemos los nombres de las categorías
-- que están en el campo catNombre
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos
     JOIN marcas
      ON marcas.idMarca = productos.idMarca
     JOIN categorias
      ON categorias.idCategoria = productos.idCategoria
