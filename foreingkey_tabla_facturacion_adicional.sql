use dbClinicaImperial


--ALTER TABLE empleado
--ADD FOREIGN KEY (id_tipo_sangre) REFERENCES Tipo_sangre (id_tiposangre);


--ALTER TABLE info_empleado
--ADD FOREIGN KEY (id_eps_empleado) REFERENCES Eps_persona (id_eps);


--ALTER TABLE registro_evento
--ADD FOREIGN KEY (id_empleado) REFERENCES  empleado(id_empleado);

--ALTER TABLE dotacion
--ADD FOREIGN KEY (id_producto) REFERENCES   productos(id_producto);

--ALTER TABLE cargo
--ADD FOREIGN KEY (id_sede) REFERENCES   sede(id_sede);


--tablas segmento facturacion

/*CREATE TABLE descuento_empleados (
    id_descuento_empleado int IDENTITY(1,1) PRIMARY KEY,
    tipo_descuento varchar(80) NOT NULL,
    valor varchar(100),
    cantidad_periodos int,
	numero_pagos int
);

CREATE TABLE pago_empleado (
    id_pago_empleado int IDENTITY(1,1) PRIMARY KEY,
    forma_pago varchar(80) NOT NULL,
    tipo_cuenta varchar(100)
);

CREATE TABLE liquidacion_empleado (
    id_liquidacion_empleado int IDENTITY(1,1) PRIMARY KEY,
    valor varchar(100) NOT NULL,
    fecha_inicio date,
    fecha_fin date
);

CREATE TABLE extras_empleado (
    id_extras_empleado int IDENTITY(1,1) PRIMARY KEY,
    horas int NOT NULL,
    fecha_inicio date,
    fecha_fin date,
	valor int,
	total int
);
CREATE TABLE beneficios_pagos (
    id_beneficio_pago int IDENTITY(1,1) PRIMARY KEY,
    tipo_beneficio varchar(80) NOT NULL,
	bono_valor int
);

CREATE TABLE salud_empleado (
    id_salud int IDENTITY(1,1) PRIMARY KEY,
    id_empleado int NOT NULL,
    valor_pagar varchar(100),
    id_incapacidades int,
	categoria varchar(100)
);


CREATE TABLE incapacidades (
    id_incapacidades int IDENTITY(1,1) PRIMARY KEY,
    dias_incapacidad int NOT NULL,
    valor_dias varchar(100)
);

CREATE TABLE medicina_prepagada (
    id_medicina_prepagada int IDENTITY(1,1) PRIMARY KEY,
    valor_medicina varchar(80) NOT NULL,
    entidad varchar(100)
);

CREATE TABLE pension_empleado (
    id_pension_empleado int IDENTITY(1,1) PRIMARY KEY,
    cantidad int NOT NULL,
    valor varchar(100)
);


CREATE TABLE pago_salario_empleado (
    id_pago_empleado int IDENTITY(1,1) PRIMARY KEY,
    id_liquidacion_empleado int NOT NULL,
	id_extra_empleado int NOT NULL,
	salario_empleado varchar(100) NOT NULL,
	mes_pago date NOT NULL,
	id_beneficio_pago int NOT NULL,
	id_empleado int NOT NULL,
	id_descuento_empleado int NOT NULL,
	id_pension_empleado int NOT NULL,
	id_medicina_prepagada int NOT NULL,
   
   );*/

--foreing key segmento facturacion

/*/ALTER TABLE pago_empleado
ADD FOREIGN KEY (id_pago_empleado) REFERENCES pago_salario_empleado (id_pago_empleado);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_liquidacion_empleado) REFERENCES  liquidacion_empleado(id_liquidacion_empleado);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_descuento_empleado) REFERENCES  descuento_empleados (id_descuento_empleado);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_extra_empleado) REFERENCES  extras_empleado (id_extras_empleado);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_beneficio_pago) REFERENCES  beneficios_pagos (id_beneficio_pago);

ALTER TABLE salud_empleado
ADD FOREIGN KEY (id_incapacidades) REFERENCES   incapacidades(id_incapacidades);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_medicina_prepagada) REFERENCES   medicina_prepagada(id_medicina_prepagada);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_pension_empleado) REFERENCES   pension_empleado(id_pension_empleado);*/



--foreing   key    
/*
ALTER TABLE beneficiario
ADD FOREIGN KEY (id_descuento_empleado) REFERENCES   descuento_empleados(id_descuento_empleado);

ALTER TABLE sueldo_empleado
ADD FOREIGN KEY (id_pago_empleado) REFERENCES   pago_empleado(id_pago_empleado);

ALTER TABLE pago_salario_empleado
ADD FOREIGN KEY (id_empleado) REFERENCES   empleado(id_empleado)

ALTER TABLE salud_empleado
ADD FOREIGN KEY (id_empleado) REFERENCES   empleado(id_empleado)*/
