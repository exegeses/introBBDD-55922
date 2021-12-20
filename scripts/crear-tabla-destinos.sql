CREATE TABLE destinos
(
    idDestino tinyint UNSIGNED auto_increment not null primary key,
    destNombre varchar(45) not null,
    idRegion tinyint not null,
    destPrecio float not null,
    destAsientos tinyint not null,
    destDisponibles tinyint not null,
    destActivo boolean not null DEFAULT 1
)