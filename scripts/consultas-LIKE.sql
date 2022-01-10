-- Nombre  Precio Marca Descripcion

-- relaciones de tablas
SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca;

-- join
SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca;


--Nombre  Precio Marca Descripcion
--     que en el nombre contengo P40

SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca
  AND prdNombre LIKE "%P40%"


--    Nombre  Precio Marca Descripcion
--     que en el nombre contengo "Altavoz"

SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
WHERE prdDescripcion LIKE "Altavoz%";


--    Nombre  Precio Marca Categoria Descripcion
--     que en el nombre contengo "Altavoz"

SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion
FROM productos
     JOIN marcas
          ON productos.idMarca = marcas.idMarca
     JOIN categorias
          ON productos.idCategoria=  categorias.idCategoria
WHERE prdDescripcion like '%altavoz%';

