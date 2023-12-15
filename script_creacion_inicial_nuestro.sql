-------------------INICIO SCRIPT script_creacion_inicial.sql-------------------

--USAR DATABASE GD2C2023
USE GD2C2023
GO
--ESQUEMA CINCO_PALABRAS_CRACK
--CREATE SCHEMA CINCO_PALABRAS_CRACK
--GO

-------------------------------CREACION-----------------------------------------


CREATE PROCEDURE CINCO_PALABRAS_CRACK.creacionTablas
AS
-- PROVINCIA
CREATE TABLE CINCO_PALABRAS_CRACK.Provincia (
    provincia_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_provincia nvarchar(50)
)
-- LOCALIDAD
CREATE TABLE CINCO_PALABRAS_CRACK.Localidad (
    localidad_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_localidad nvarchar(50),
	provincia_localidad_id numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Provincia(provincia_id)
)
-- BARRIO
CREATE TABLE CINCO_PALABRAS_CRACK.Barrio (
    barrio_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_barrio nvarchar(50),
	localidad_barrio_id numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Localidad(localidad_id)
)
-- SUCURSAL
CREATE TABLE CINCO_PALABRAS_CRACK.Sucursal (
    sucursal_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_sucursal nvarchar(50),
    telefono_sucursal nvarchar(50),
	direccion_sucursal nvarchar(50),
	localidad_sucursal numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Localidad(localidad_id)
)
--TIPO_INMUEBLE
CREATE TABLE CINCO_PALABRAS_CRACK.Tipo_Inmueble (
    tipo_inmueble_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_tipo_inmueble nvarchar(100)
)
-- Estado_Inmueble
CREATE TABLE CINCO_PALABRAS_CRACK.Estado_Inmueble (
    estado_inmueble_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_estado_inmueble nvarchar(50)
)
-- AMBIENTE
CREATE TABLE CINCO_PALABRAS_CRACK.Ambiente (
    ambientes_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    cantidad_detalle nvarchar(50)
)

-- CARACTERISTICA
CREATE TABLE CINCO_PALABRAS_CRACK.Caracteristica (
    caracteristica_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_caracteristica nvarchar(50)
)
-- PROPIETARIO
CREATE TABLE CINCO_PALABRAS_CRACK.Propietario (
    propietario_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    dni_propietario numeric(8,0),
	nombre_propietario nvarchar(50),
    apellido_propietario nvarchar(50),
	fecha_nacimiento_propietario datetime,
    fecha_registro_propietario datetime,
    mail_propietario nvarchar(50),
	telefono_propietario numeric(8,0)
)
-- INMUEBLE
CREATE TABLE CINCO_PALABRAS_CRACK.Inmueble (
	inmueble_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre_inmueble nvarchar(100),
    descripcion_inmueble nvarchar(100),
    direccion_inmueble nvarchar(100),
    superficie_total numeric(10,0),
    antiguedad numeric(4,0),
    expensas numeric(18,2),
	orientacion nvarchar(100),
    disposicion nvarchar(100),
	tipo_inmueble_id_inmueble numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Tipo_Inmueble(tipo_inmueble_id) NOT NULL,
    ambiente_id_inmueble numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Ambiente(ambientes_id),
	estado_id_inmueble numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Estado_Inmueble(estado_inmueble_id),
	propietario_id_inmueble numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Propietario(propietario_id),
	barrio_id_inmueble numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Barrio(barrio_id)
)
-- INMUEBLE_CARACTERISTICA
CREATE TABLE CINCO_PALABRAS_CRACK.Inmueble_Caracteristica (
    inmueble_id_IC numeric(18,0) NOT NULL,
	caracteristica_id_IC numeric(18,0) NOT NULL,
	PRIMARY KEY(caracteristica_id_IC,inmueble_id_IC),
	FOREIGN KEY (caracteristica_id_IC) REFERENCES CINCO_PALABRAS_CRACK.Caracteristica(caracteristica_id),
    FOREIGN KEY (inmueble_id_IC) REFERENCES CINCO_PALABRAS_CRACK.Inmueble(inmueble_id)
)


-- AGENTE_INMOBILIARIO
CREATE TABLE CINCO_PALABRAS_CRACK.Agente_Inmobiliario (
    agente_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    dni_agente numeric(8,0),
	nombre_agente nvarchar(50),
    apellido_agente nvarchar(50),
	fecha_nacimiento_agente datetime,
    fecha_registro_agente datetime,
    mail_agente nvarchar(50),
	telefono_agente numeric(8,0),
	sucursal_id_agente numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Sucursal(sucursal_id)
)

-- MONEDA
CREATE TABLE CINCO_PALABRAS_CRACK.Moneda (
    moneda_id numeric(4,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    moneda_detalle nvarchar(100)
)
-- MEDIO_PAGO
CREATE TABLE CINCO_PALABRAS_CRACK.Medio_Pago (
    medio_pago_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_medio_pago nvarchar(50)
)
-- TIPO_PERIODO
CREATE TABLE CINCO_PALABRAS_CRACK.Tipo_Periodo (
    tipo_periodo_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_tipo_periodo nvarchar(100)
)
-- ESTADO_ANUNCIO
CREATE TABLE CINCO_PALABRAS_CRACK.Estado_Anuncio (
    estado_anuncio_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_estado_anuncio nvarchar(100)
)
-- TIPO_OPERACION
CREATE TABLE CINCO_PALABRAS_CRACK.Tipo_Operacion (
    tipo_operacion_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_tipo_operacion nvarchar(100)
)
-- ANUNCIO
CREATE TABLE CINCO_PALABRAS_CRACK.Anuncio (
    anuncio_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    fecha_publicacion datetime,
    fecha_finalizacion datetime,
	costo_publicacion numeric(18,2),
	precio_publicacion numeric(18,2),
	tipo_operacion_id_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Tipo_Operacion(tipo_operacion_id),
    tipo_periodo_id_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Tipo_Periodo(tipo_periodo_id),
	estado_anuncio_id_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Estado_Anuncio(estado_anuncio_id),
	moneda_id_anuncio numeric(4,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Moneda(moneda_id),
    inmueble_id_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Inmueble(inmueble_id),
    agente_id_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Agente_Inmobiliario(agente_id)
)
-- ESTADO_ALQUILER
CREATE TABLE CINCO_PALABRAS_CRACK.Estado_Alquiler (
    estado_alquiler_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    descripcion_estado_alquiler nvarchar(50)
)
-- ALQUILER
CREATE TABLE CINCO_PALABRAS_CRACK.Alquiler (
    alquiler_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    fecha_inicio_alquiler datetime,
    fecha_fin_alquiler datetime,
    cantidad_periodos numeric(4,0),
    deposito_alquiler numeric(18,2),
    comision_alquiler numeric(18,2),
    gastos_averiguaciones numeric(18,2),
	anuncio_id_alquiler_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Anuncio(anuncio_id),
    estado_alquiler_id_alquiler numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Estado_Alquiler(estado_alquiler_id)
)

-- DETALLE_IMPORTE
CREATE TABLE CINCO_PALABRAS_CRACK.Detalle_Importe (
    alquiler_id_DI numeric(18,0) NOT NULL,
    inicio_periodo_DI numeric(4,0) NOT NULL,
    fin_periodo_DI numeric(4,0) NOT NULL,
    importe numeric(18,2),
	PRIMARY KEY(alquiler_id_DI,inicio_periodo_DI,fin_periodo_DI),
    FOREIGN KEY (alquiler_id_DI) REFERENCES CINCO_PALABRAS_CRACK.Alquiler(alquiler_id)
    
)
-- PAGO_ALQUILER
CREATE TABLE CINCO_PALABRAS_CRACK.Pago_Alquiler (
    pago_alquiler_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    fecha_pago datetime,
    periodo_nro numeric(4,0),
    periodo_detalle nvarchar(100),
    inicio_periodo datetime,
    fin_periodo datetime,
    importe numeric(18,2),
	alquiler_id_PA numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Alquiler(alquiler_id),
    medio_pago_id_PA numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Medio_Pago(medio_pago_id)
)
-- INQUILINO
CREATE TABLE CINCO_PALABRAS_CRACK.Inquilino (
    inquilino_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    dni_inquilino numeric(8,0),
	nombre_inquilino nvarchar(50),
    apellido_inquilino nvarchar(50),
	fecha_nacimiento_inquilino datetime,
    fecha_registro_inquilino datetime,
    mail_inquilino nvarchar(50),
	telefono_inquilino numeric(8,0)
)
-- INQUILINO_ALQUILER
CREATE TABLE CINCO_PALABRAS_CRACK.Inquilino_Alquiler (
    alquiler_id_IA numeric(18,0) NOT NULL,
	inquilino_id_IA numeric(18,0) NOT NULL,
	PRIMARY KEY(alquiler_id_IA, inquilino_id_IA),
	FOREIGN KEY (alquiler_id_IA) REFERENCES CINCO_PALABRAS_CRACK.Alquiler(alquiler_id),
    FOREIGN KEY (inquilino_id_IA) REFERENCES CINCO_PALABRAS_CRACK.Inquilino(inquilino_id)
)


-- COMPRADOR
CREATE TABLE CINCO_PALABRAS_CRACK.Comprador (
    comprador_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    dni_comprador numeric(8,0),
	nombre_comprador nvarchar(50),
    apellido_comprador nvarchar(50),
	fecha_nacimiento_comprador datetime,
    fecha_registro_comprador datetime,
    mail_comprador nvarchar(50),
	telefono_comprador numeric(8,0)
)

-- VENTA
CREATE TABLE CINCO_PALABRAS_CRACK.Venta (
    venta_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    fecha_venta datetime,
	precio_venta numeric(18,2),
    comision_venta numeric(18,2),
	anuncio_id_venta numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Anuncio(anuncio_id) NOT NULL,
	comprador_id_venta numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Comprador(comprador_id) NOT NULL,
	moneda_id_venta numeric(4,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Moneda(moneda_id) NOT NULL
)


-- PAGO_VENTA
CREATE TABLE CINCO_PALABRAS_CRACK.Pago_Venta (
    pago_venta_id numeric(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
    importe numeric(18,2),
    cotizacion numeric(18,2),
    moneda_id_PV numeric(4,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Moneda(moneda_id),
	venta_id_PV numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Venta(venta_id),
    medio_pago_id_PV numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.Medio_Pago(medio_pago_id)
)


GO
-------------------------------MIGRACION-----------------------------------------

-- PROCEDIMIENTO DE MIGRACION DE DATOS (COMPLETAR EL NUEVO MODELO)
CREATE PROCEDURE CINCO_PALABRAS_CRACK.migracion
AS

--MIGRAR Tipo_Inmueble
INSERT INTO CINCO_PALABRAS_CRACK.Tipo_Inmueble (nombre_tipo_inmueble)
SELECT distinct(INMUEBLE_TIPO_INMUEBLE) FROM gd_esquema.Maestra
WHERE INMUEBLE_TIPO_INMUEBLE IS NOT NULL
INSERT INTO CINCO_PALABRAS_CRACK.Tipo_Inmueble (nombre_tipo_inmueble) 
values ('Casa'),
       ('PH')

--MIGRAR AMBIENTE
INSERT INTO CINCO_PALABRAS_CRACK.Ambiente (cantidad_detalle)
SELECT distinct(INMUEBLE_CANT_AMBIENTES) FROM gd_esquema.Maestra
WHERE INMUEBLE_CANT_AMBIENTES IS NOT NULL

--MIGRAR Estado_Inmueble
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Inmueble (descripcion_estado_inmueble)
SELECT distinct(INMUEBLE_ESTADO)  FROM gd_esquema.Maestra
WHERE INMUEBLE_ESTADO IS NOT NULL
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Inmueble (descripcion_estado_inmueble) values('Regular')

-- MIGRAR TIPO_OPERACION
INSERT INTO CINCO_PALABRAS_CRACK.Tipo_Operacion (descripcion_tipo_operacion)
SELECT distinct(ANUNCIO_TIPO_OPERACION) FROM gd_esquema.Maestra
WHERE ANUNCIO_TIPO_OPERACION IS NOT NULL

--MIGRAR CARACTERISTICA
INSERT INTO CINCO_PALABRAS_CRACK.Caracteristica (descripcion_caracteristica) 
values ('Calefaccion'),
       ('WIFI'),
       ('Cable'),
       ('Gas'),
       ('Piscina'),
       ('Aire acondicionado'),
       ('Amoblamiento')

--MIGRAR MEDIO_EPAGO
INSERT INTO CINCO_PALABRAS_CRACK.Medio_Pago (descripcion_medio_pago)
SELECT distinct(PAGO_ALQUILER_MEDIO_PAGO) FROM gd_esquema.Maestra
WHERE PAGO_ALQUILER_MEDIO_PAGO IS NOT NULL
INSERT INTO CINCO_PALABRAS_CRACK.Medio_Pago (descripcion_medio_pago) 
values ('Crédito'),
       ('Débito')

--MIGRAR MONEDA
INSERT INTO CINCO_PALABRAS_CRACK.Moneda (moneda_detalle)
SELECT DISTINCT ANUNCIO_MONEDA FROM gd_esquema.Maestra
WHERE ANUNCIO_MONEDA IS NOT NULL

--MIGRAR ESTADO_ALQUILER
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Alquiler (descripcion_estado_alquiler)
SELECT distinct(ALQUILER_ESTADO) FROM gd_esquema.Maestra
WHERE ALQUILER_ESTADO IS NOT NULL
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Alquiler (descripcion_estado_alquiler) 
values ('Vigente'),
       ('Cancelado')

--MIGRAR TIPO_PERIODO
INSERT INTO CINCO_PALABRAS_CRACK.Tipo_Periodo (descripcion_tipo_periodo)
SELECT distinct ANUNCIO_TIPO_PERIODO FROM gd_esquema.Maestra
WHERE ANUNCIO_TIPO_PERIODO IS NOT NULL

--MIGRAR ESTADO_ANUNCIO
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Anuncio (descripcion_estado_anuncio)
SELECT distinct(anuncio_estado) FROM gd_esquema.Maestra
WHERE anuncio_estado IS NOT NULL
INSERT INTO CINCO_PALABRAS_CRACK.Estado_Anuncio (descripcion_estado_anuncio) values ('Vigente')

--MIGRAR PROVINCIA
INSERT INTO CINCO_PALABRAS_CRACK.Provincia (nombre_provincia)
SELECT distinct(INMUEBLE_PROVINCIA) FROM gd_esquema.Maestra
WHERE INMUEBLE_PROVINCIA IS NOT NULL

--MIGRAR LOCALIDAD
INSERT INTO CINCO_PALABRAS_CRACK.Localidad (nombre_localidad, provincia_localidad_id)
SELECT distinct(inmueble_localidad), provincia_id FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Provincia ON inmueble_provincia = nombre_provincia
WHERE inmueble_localidad IS NOT NULL
UNION
SELECT distinct(sucursal_localidad), provincia_id FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Provincia ON sucursal_provincia = nombre_provincia
WHERE sucursal_localidad IS NOT NULL

--MIGRAR BARRIO
INSERT INTO CINCO_PALABRAS_CRACK.Barrio (nombre_barrio, localidad_barrio_id)
SELECT distinct(INMUEBLE_BARRIO), localidad_id FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Localidad ON inmueble_localidad = nombre_localidad
WHERE INMUEBLE_BARRIO IS NOT NULL

--MIGRAR SUCURSAL
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.sucursal on
INSERT INTO CINCO_PALABRAS_CRACK.Sucursal (sucursal_id, nombre_sucursal, telefono_sucursal, direccion_sucursal, localidad_sucursal)
SELECT distinct(SUCURSAL_CODIGO), sucursal_nombre, sucursal_telefono, sucursal_direccion, localidad_id FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Localidad ON nombre_localidad = sucursal_localidad AND provincia_localidad_id = (SELECT provincia_id FROM CINCO_PALABRAS_CRACK.Provincia WHERE nombre_provincia = sucursal_provincia)
WHERE sucursal_localidad IS NOT NULL
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.sucursal off


--MIGRAR Agente_Inmobiliario

INSERT INTO CINCO_PALABRAS_CRACK.Agente_Inmobiliario (dni_agente, nombre_agente,
			apellido_agente, fecha_nacimiento_agente, fecha_registro_agente,
			mail_agente, telefono_agente, sucursal_id_agente)
SELECT distinct(AGENTE_DNI), AGENTE_NOMBRE,
 AGENTE_APELLIDO, AGENTE_FECHA_NAC,
 AGENTE_FECHA_REGISTRO, AGENTE_MAIL,
 AGENTE_TELEFONO, SUCURSAL_CODIGO FROM gd_esquema.Maestra where AGENTE_DNI is not null

 --MIGRAR PROPIETARIO
INSERT INTO CINCO_PALABRAS_CRACK.Propietario (dni_propietario, nombre_propietario,
			apellido_propietario, fecha_nacimiento_propietario, fecha_registro_propietario,
			mail_propietario, telefono_propietario)
 SELECT distinct(PROPIETARIO_DNI), PROPIETARIO_NOMBRE,
 PROPIETARIO_APELLIDO, PROPIETARIO_FECHA_NAC,
 PROPIETARIO_FECHA_REGISTRO, PROPIETARIO_MAIL, PROPIETARIO_TELEFONO 
 FROM gd_esquema.Maestra where PROPIETARIO_DNI is not null

--MIGRAR INMUEBLE
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.inmueble on
insert into CINCO_PALABRAS_CRACK.inmueble (inmueble_id,tipo_inmueble_id_inmueble, barrio_id_inmueble, ambiente_id_inmueble, orientacion, disposicion, estado_id_inmueble,
				nombre_inmueble, descripcion_inmueble, direccion_inmueble, superficie_total, antiguedad, expensas, propietario_id_inmueble)
select distinct(inmueble_codigo), 
	tipo_inmueble_id, 
	barrio_id, 
	ambientes_id, 
	INMUEBLE_ORIENTACION, 
	INMUEBLE_DISPOSICION, 
	estado_inmueble_id,
	inmueble_nombre, 
	inmueble_descripcion, 
	inmueble_direccion, 
	inmueble_superficietotal, 
	inmueble_antiguedad,
	inmueble_expesas,
	propietario_id
from gd_esquema.Maestra
join CINCO_PALABRAS_CRACK.Tipo_Inmueble on INMUEBLE_TIPO_INMUEBLE = nombre_tipo_inmueble
join CINCO_PALABRAS_CRACK.barrio on INMUEBLE_BARRIO = nombre_barrio AND localidad_barrio_id = (SELECT localidad_id FROM CINCO_PALABRAS_CRACK.Localidad WHERE nombre_localidad = inmueble_localidad AND provincia_localidad_id = (SELECT provincia_id FROM CINCO_PALABRAS_CRACK.provincia WHERE nombre_provincia = inmueble_provincia))  
join CINCO_PALABRAS_CRACK.Ambiente on cantidad_detalle = inmueble_cant_ambientes
join CINCO_PALABRAS_CRACK.Estado_Inmueble on descripcion_estado_inmueble = inmueble_estado
join CINCO_PALABRAS_CRACK.Propietario on Propietario.dni_propietario = PROPIETARIO_DNI
where inmueble_codigo is not null 

SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.inmueble off

--MIGRAR IMUEBLE_CARACTERISTICA
insert into CINCO_PALABRAS_CRACK.Inmueble_Caracteristica (inmueble_id_IC,caracteristica_id_IC)
select distinct(inmueble_codigo),caracteristica_id from gd_esquema.MAestra
join CINCO_PALABRAS_CRACK.Caracteristica on (INMUEBLE_CARACTERISTICA_CABLE = 1 and descripcion_caracteristica = 'Cable')
union
select distinct(inmueble_codigo),caracteristica_id from gd_esquema.MAestra
join CINCO_PALABRAS_CRACK.Caracteristica on (INMUEBLE_CARACTERISTICA_CALEFACCION = 1 and descripcion_caracteristica = 'Calefaccion')
union
select distinct(inmueble_codigo),caracteristica_id from gd_esquema.MAestra
join CINCO_PALABRAS_CRACK.Caracteristica on (INMUEBLE_CARACTERISTICA_WIFI = 1 and descripcion_caracteristica = 'WIFI')
union
select distinct(inmueble_codigo),caracteristica_id from gd_esquema.MAestra
join CINCO_PALABRAS_CRACK.Caracteristica on (INMUEBLE_CARACTERISTICA_GAS = 1 and descripcion_caracteristica = 'Gas')




--MIGRAR ANUNCIO
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.Anuncio on 

INSERT INTO CINCO_PALABRAS_CRACK.Anuncio(anuncio_id, tipo_operacion_id_anuncio,moneda_id_anuncio,inmueble_id_anuncio,agente_id_anuncio,estado_anuncio_id_anuncio,tipo_periodo_id_anuncio,
fecha_publicacion,precio_publicacion,costo_publicacion,fecha_finalizacion)
SELECT DISTINCT(anuncio_codigo), tipoOp.tipo_operacion_id, moneda.moneda_id, INMUEBLE_CODIGO, Agente_Inmobiliario.agente_id, ean.estado_anuncio_id,
tipoPe.tipo_periodo_id, ANUNCIO_FECHA_PUBLICACION,ANUNCIO_PRECIO_PUBLICADO, ANUNCIO_COSTO_ANUNCIO, ANUNCIO_FECHA_FINALIZACION
FROM gd_esquema.Maestra maestra
JOIN CINCO_PALABRAS_CRACK.Tipo_Operacion tipoOp on tipoOp.descripcion_tipo_operacion = maestra.ANUNCIO_TIPO_OPERACION
JOIN CINCO_PALABRAS_CRACK.Moneda moneda on moneda.moneda_detalle = maestra.ANUNCIO_MONEDA
JOIN CINCO_PALABRAS_CRACK.Agente_Inmobiliario on Agente_Inmobiliario.dni_agente = maestra.AGENTE_DNI
JOIN CINCO_PALABRAS_CRACK.Estado_Anuncio ean on ean.descripcion_estado_anuncio = maestra.anuncio_estado
JOIN CINCO_PALABRAS_CRACK.Tipo_Periodo tipoPe on tipoPe.descripcion_tipo_periodo = maestra.ANUNCIO_TIPO_PERIODO
where INMUEBLE_CODIGO is not null

SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.Anuncio off

--MIGRAR ALQUILER 
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.alquiler on

INSERT INTO CINCO_PALABRAS_CRACK.Alquiler (alquiler_id, anuncio_id_alquiler_anuncio, estado_alquiler_id_alquiler, fecha_inicio_alquiler, fecha_fin_alquiler, 
                      cantidad_periodos, deposito_alquiler, comision_alquiler, gastos_averiguaciones)
SELECT distinct(alquiler_codigo), anuncio_codigo, estado_alquiler_id, alquiler_fecha_inicio, alquiler_fecha_fin, 
                alquiler_cant_periodos, alquiler_deposito, alquiler_comision, alquiler_gastos_averigua FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Estado_Alquiler ON descripcion_estado_alquiler = alquiler_estado

SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.alquiler off

--MIGRAR PAGO ALQUILER
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.Pago_Alquiler on

INSERT INTO CINCO_PALABRAS_CRACK.Pago_Alquiler (pago_alquiler_id, alquiler_id_PA, medio_pago_id_PA,
                          fecha_pago, periodo_nro, periodo_detalle, inicio_periodo, fin_periodo, importe)
SELECT DISTINCT(PAGO_ALQUILER_CODIGO), alquiler_codigo, mp.medio_pago_id,
       PAGO_ALQUILER_FECHA, PAGO_ALQUILER_NRO_PERIODO, PAGO_ALQUILER_DESC, PAGO_ALQUILER_FEC_INI, PAGO_ALQUILER_FEC_FIN, PAGO_ALQUILER_IMPORTE
FROM gd_esquema.Maestra maestra
JOIN CINCO_PALABRAS_CRACK.Medio_Pago mp on mp.descripcion_medio_pago = maestra.PAGO_ALQUILER_MEDIO_PAGO

SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.Pago_Alquiler off

--MIGRAR INQUILINO

INSERT INTO CINCO_PALABRAS_CRACK.Inquilino (dni_inquilino, nombre_inquilino,
			apellido_inquilino, fecha_nacimiento_inquilino, fecha_registro_inquilino,
			mail_inquilino, telefono_inquilino)
 SELECT distinct(INQUILINO_DNI), INQUILINO_NOMBRE,
 INQUILINO_APELLIDO, INQUILINO_FECHA_NAC,
 INQUILINO_FECHA_REGISTRO, INQUILINO_MAIL, INQUILINO_TELEFONO FROM gd_esquema.Maestra where INQUILINO_DNI is not null


insert into CINCO_PALABRAS_CRACK.Inquilino_Alquiler (alquiler_id_IA,inquilino_id_IA)
SELECT distinct(ALQUILER_CODIGO), inquilino_id  FROM gd_esquema.Maestra
join CINCO_PALABRAS_CRACK.Inquilino on dni_inquilino = INQUILINO_DNI
where INQUILINO_DNI is not null


-----------------

--cambiar
--MIGRAR COMPRADOR
INSERT INTO CINCO_PALABRAS_CRACK.Comprador (dni_comprador, nombre_comprador,
			apellido_comprador, fecha_nacimiento_comprador, fecha_registro_comprador,
			mail_comprador, telefono_comprador)
SELECT distinct(COMPRADOR_DNI), COMPRADOR_NOMBRE,
COMPRADOR_APELLIDO, COMPRADOR_FECHA_NAC,
COMPRADOR_FECHA_REGISTRO, COMPRADOR_MAIL, COMPRADOR_TELEFONO FROM gd_esquema.Maestra where COMPRADOR_DNI is not null


--MIGRAR VENTA
SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.venta on

INSERT INTO CINCO_PALABRAS_CRACK.Venta (venta_id, moneda_id_venta, anuncio_id_venta, fecha_venta, comision_venta, precio_venta, comprador_id_venta)
SELECT distinct(venta_codigo), moneda_id, anuncio_codigo, venta_fecha, venta_comision, venta_precio_venta, comprador_id
FROM gd_esquema.Maestra
JOIN CINCO_PALABRAS_CRACK.Moneda ON venta_moneda = moneda_detalle
JOIN CINCO_PALABRAS_CRACK.Comprador on Comprador.dni_comprador = maestra.COMPRADOR_DNI


SET IDENTITY_INSERT CINCO_PALABRAS_CRACK.venta off

--MIGRAR PAGO_VENTA
INSERT INTO CINCO_PALABRAS_CRACK.Pago_Venta (venta_id_PV, moneda_id_PV, medio_pago_id_PV,
                       importe, cotizacion)
SELECT VENTA_CODIGO, mo.moneda_id, mp.medio_pago_id,
       PAGO_VENTA_IMPORTE, PAGO_VENTA_COTIZACION
FROM gd_esquema.Maestra maestra
JOIN CINCO_PALABRAS_CRACK.Moneda mo on mo.moneda_detalle = maestra.pago_venta_moneda
JOIN CINCO_PALABRAS_CRACK.Medio_Pago mp on mp.descripcion_medio_pago = maestra.pago_venta_medio_pago

--MIGRAR DETALLE_IMPORTE
insert into CINCO_PALABRAS_CRACK.Detalle_Importe (alquiler_id_DI,inicio_periodo_DI,fin_periodo_DI,importe)
select distinct(alquiler_codigo),detalle_alq_nro_periodo_ini,detalle_alq_nro_periodo_fin,detalle_alq_precio from gd_esquema.Maestra
where alquiler_codigo is not null and DETALLE_ALQ_NRO_PERIODO_FIN is not null and DETALLE_ALQ_NRO_PERIODO_INI is not null

GO

--EJECUTAR AMBOS PROCEDIMIENTOS (CREACION-MIGRACION)
exec CINCO_PALABRAS_CRACK.creacionTablas
exec CINCO_PALABRAS_CRACK.migracion

-------------FIN SCRIPT script_creacion_inicial.sql----------------