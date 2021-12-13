CREATE TABLE productos
	(
		id int not null primary key auto_increment,
        nombre varchar(45) not null,
        precio float unsigned not null,
        stock int not null
    )