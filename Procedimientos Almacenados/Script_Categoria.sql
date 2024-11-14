-- Insertar una Categoria 
DELIMITER //
CREATE PROCEDURE spInsertCategory(IN p_description VARCHAR(45), IN p_date DATE)
BEGIN
    insert into tbl_categoria(cat_descripcion,cat_fecha_creacion) values(p_description,p_date);
END//
DELIMITER ;

-- Seleccionar todas las Categorias 
DELIMITER //
CREATE PROCEDURE spSelectCategory()
BEGIN
	select cat_id,cat_descripcion,cat_fecha_creacion from tbl_categoria;
END//
DELIMITER ;

-- Selecciona unicamente el id y el nombre de las categorias
DELIMITER //
CREATE PROCEDURE spSelectCategoryDDL()
BEGIN
	select cat_id,cat_descripcion
    from tbl_categoria;
END//
DELIMITER ;

-- Seleccionar unicamente el id y la descripcion 
DELIMITER //
CREATE PROCEDURE spSelectCategoryDDL()
BEGIN
	select cat_id,cat_descripcion from tbl_categoria;
END//
DELIMITER ;

-- Actualizar una Categoria 
DELIMITER //
CREATE PROCEDURE spUpdateCategory(IN p_id INT,IN p_description VARCHAR(45),IN p_date DATE)
BEGIN
    update tbl_categoria
    set cat_descripcion = p_description,
    cat_fecha_creacion = p_date
    where cat_id = p_id;
END//
DELIMITER ;

-- Borrar una Categoria 
DELIMITER //
CREATE PROCEDURE spDeleteCategory(IN p_id INT)
BEGIN
    delete from tbl_categoria where cat_id = p_id;
END//
DELIMITER ;