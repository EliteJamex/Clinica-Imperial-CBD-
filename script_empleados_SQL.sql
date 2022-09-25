--Empleados

--use clinica_imperial

-- tipo_contrato
CREATE TABLE tipo_contrato
(  
    id_contrato int primary key identity(1,1),
    Tipo_contrato varchar(50) NOT NULL,  
    Duracion_contrato  int NOT NULL, 
    Fecha_ingreso date,
   
);


-- Nivel riesgo

CREATE TABLE nivel_riesgo
(  
    id_riesgo int primary key identity(1,1),
    Tipo_riesgo varchar(50) NOT NULL,  
   
);

-- Tajeta_Profesional
CREATE TABLE tajeta_Profesional
(  
    id_tarjetaprofesional int primary key identity(1,1),
    codigo_tajetaprofesional varchar(50) NOT NULL,  
   
);


-- cargo
CREATE TABLE cargo
(  
    id_cargo int primary key identity(1,1),
    cargo varchar(50) NOT NULL,  
	area varchar(50) NOT NULL,  
	id_sede int,
   
);



-- Novedades
CREATE TABLE novedades
(  
    id_novedad int primary key identity(1,1),
    tipo_novedad varchar(50) NOT NULL,  
	dias_de_novedad int NOT NULL,  
	regreso_empleado date,
   
);


-- Info_empleado
CREATE TABLE info_empleado
(  
    id_info_empleado int primary key identity(1,1), 
	id_riesgo int NOT NULL,
	id_tarjetaprofesional int NOT NULL, 
	id_contrato int NOT NULL, 
	id_cargo int NOT NULL, 
	id_estadocontarto int NOT NULL, 
	id_dotacion int NOT NULL, 
	id_novedad int NOT NULL, 
	id_eps_empleado int NOT NULL, 
	id_empleado int NOT NULL, 
	id_sueldo int NOT NULL, 
	id_beneficiario int NOT NULL, 
	
   
);

-- beneficiario
CREATE TABLE beneficiario
(  
    id_beneficiario int primary key identity(1,1),
    numero_beneficiario int NOT NULL,  
	parentesco varchar(100) NOT NULL,  
	ciudad varchar(50) NOT NULL, 
	id_descuento_empleado int NOT NULL,
   
);


-- Sueldo_empleado
CREATE TABLE sueldo_empleado
(  
    id_sueldo int primary key identity(1,1),
    salario bigint NOT NULL,  
	bonificacion bigint NOT NULL,   
	horas_extras int NOT NULL, 
	beneficios_monetarios varchar(2) NOT NULL,
	id_medio_pagos_empleado int NOT NULL, 
	id_pago_empleado int NOT NULL, 
   
);


-- Estado contrado
CREATE TABLE estado_contrado
(  
    id_estado_contato int primary key identity(1,1),
	estado_contrato varchar(80) NOT NULL,
	id_contrato_fin int NOT NULL, 
   
);


-- Contrato_fin
CREATE TABLE contrato_fin
(  
    id_contrato_fin int primary key identity(1,1),
	motivo_retiro varchar(80) NOT NULL,
	fecha_retiro date,
	duracion int NOT NULL, 
   
);


-- Jornada
CREATE TABLE jornada
(  
    id_jornada int primary key identity(1,1),
	Horario datetime,
	Zona_horaria varchar(80) NOT NULL,
   
);

-- dotacion
CREATE TABLE dotacion
(  
    id_dotacion int primary key identity(1,1),
	tipo_dotacion varchar(80) NOT NULL,
	talla varchar(10) NOT NULL,
	tiempo_dotacion int NOT NULL,
	id_producto int NOT NULL,
   
);


-- medios_pagos_empleado
CREATE TABLE medios_pagos_empleado
(  
    id_medio_pagos_empleado int primary key identity(1,1),
	tarjeta varchar(80) NOT NULL,
	numero_tarjeta int NOT NULL,
	tipo_cuenta varchar(80) NOT NULL,
   
);



-- tipo_empleado
CREATE TABLE tipo_empleado
(  
    id_tipo_empleado int primary key identity(1,1),
	tipo_empleado varchar(80) NOT NULL,
   
);



-- Empleados
CREATE TABLE empleado
(  
    id_empleado int primary key identity(1,1),
	cargo varchar(80) NOT NULL,
	nombre_empleado varchar(80) NOT NULL,
	area_empleado varchar(80) NOT NULL,
	tipo_documeto varchar(80) NOT NULL,
	edad int  NOT NULL,
	tipo_sexo varchar(3) NOT NULL,
	telefono int  NOT NULL,
	id_tipo_empleado int  NOT NULL,
	id_tipo_sangre int  NOT NULL,
	id_Jornada int  NOT NULL,
   
);




