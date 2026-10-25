
USE Paises_7A;

-- READ: listar los países
SELECT pais_id, pais_descripcion
FROM paises
ORDER BY pais_id;

-- CREATE: agregar un país
-- INSERT INTO paises (pais_descripcion)
-- VALUES ('Nombre del país');

-- UPDATE: modificar un país
-- UPDATE paises
-- SET pais_descripcion = 'Nuevo nombre'
-- WHERE pais_id = 20;

-- DELETE: eliminar un país
-- DELETE FROM paises
-- WHERE pais_id = 20;

-- MASTER-DETAIL: países y provincias
SELECT
    p.pais_id,
    p.pais_descripcion,
    pr.pro_id,
    pr.pro_descripcion
FROM paises AS p
LEFT JOIN provincias AS pr
    ON p.pais_id = pr.pais_id
ORDER BY p.pais_id, pr.pro_id;
