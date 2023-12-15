---------------------------INICIO SCRIPT script_creacion_BI---------------------

--USAR DATABASE GD2C2023
USE GD2C2023
GO
-------------------------------CREACION DIMENSIONES----------------------------------------

CREATE PROCEDURE CINCO_PALABRAS_CRACK.creacionDatosBI
AS
BEGIN
	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Tiempo (
		bi_anio numeric(18,0) NOT NULL,
		bi_cuatrimestre numeric(18,0) NOT NULL,
		bi_mes numeric(18,0) NOT NULL,
		PRIMARY KEY(bi_anio, bi_cuatrimestre, bi_mes)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Provincia (
		bi_provincia_id numeric(18,0)  PRIMARY KEY NOT NULL,
		bi_nombre_provincia nvarchar(50)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Localidad (
		bi_localidad_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_provincia_localidad numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Provincia(bi_provincia_id),
		bi_nombre_localidad nvarchar(50)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Barrio (
		bi_barrio_id numeric(18,0)  PRIMARY KEY NOT NULL,
		bi_localidad_barrio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Localidad(bi_localidad_id),
		bi_nombre_barrio nvarchar(50)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Sucursal (
		bi_sucursal_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_localidad_sucursal numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Localidad(bi_localidad_id),
		bi_nombre_sucursal nvarchar(50),
		bi_direccion_sucursal nvarchar(50),
		bi_telefono_sucursal nvarchar(50)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Rango_Etario (
		bi_rango_etario_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_inicio_RE numeric(18,0),
		bi_fin_RE numeric(18,0)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble (
		bi_tipo_inmueble_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_nombre_tipo_inmueble nvarchar(100)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Ambientes (
		bi_ambientes_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_cantidad_detalle nvarchar(100)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Rango_M2 (
		bi_rango_m2_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_inicio_R2 numeric(18,0),
		bi_fin_R2 numeric(18,0)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Tipo_Operacion (
		bi_tipo_operacion_id numeric(18,0) PRIMARY KEY NOT NULL,
		id_descripcion_tipo_operacion nvarchar(100)
	)

	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Moneda (
		bi_moneda_id numeric(18,0) PRIMARY KEY NOT NULL,
		bi_detalle_moneda nvarchar(100)
	)

	------------------------------------------CREACION TABLAS DE HECHOS-----------------------------------------------------

	--CREACION TABLA DE HECHOS_BI DE LOS ANUNCIOS
	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio (
		bi_tipo_operacion_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Tipo_Operacion(bi_tipo_operacion_id),
		bi_tipo_inmueble_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble(bi_tipo_inmueble_id),
		bi_sucursal_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Sucursal(bi_sucursal_id),
		bi_barrio_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Barrio(bi_barrio_id),
		bi_anio_publicacion_anuncio numeric(18,0),
		bi_cuatrimestre_publicacion_anuncio numeric(18,0), 
		bi_mes_publicacion_anuncio  numeric(18,0),
		bi_ambientes_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Ambientes(bi_ambientes_id),
		bi_metros_cuadrados_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Rango_M2(bi_rango_m2_id),
		bi_rango_etario_agente_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Rango_Etario(bi_rango_etario_id), 
		bi_moneda_anuncio numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Moneda(bi_moneda_id), 
		bi_monto_total_operaciones_anuncio numeric(18,2),
		bi_cantidad_operaciones_anuncio numeric(18,0),
		bi_precio_prom_anuncio numeric(18,2),
		bi_duracion_anuncio numeric(18,0), 
		bi_cantidad_anuncio numeric(18,0),
		bi_comision_prom_anuncio numeric(18,2),
		PRIMARY KEY(bi_tipo_operacion_anuncio, bi_moneda_anuncio, bi_ambientes_anuncio,bi_tipo_inmueble_anuncio,
		bi_metros_cuadrados_anuncio,bi_rango_etario_agente_anuncio,bi_anio_publicacion_anuncio,
		bi_cuatrimestre_publicacion_anuncio,bi_mes_publicacion_anuncio,bi_barrio_anuncio,bi_sucursal_anuncio)    	
	)

	ALTER TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio
	ADD CONSTRAINT FK_Tiempo_Anuncio FOREIGN KEY (bi_anio_publicacion_anuncio, bi_cuatrimestre_publicacion_anuncio, bi_mes_publicacion_anuncio) 
	REFERENCES CINCO_PALABRAS_CRACK.BI_Tiempo(bi_anio, bi_cuatrimestre, bi_mes)

	--CREACION TABLA DE HECHOS DE LOS ALQUILERES
	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Alquiler (
		bi_barrio_alquiler numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Barrio(bi_barrio_id),
		bi_anio_alquiler numeric(18,0),
		bi_cuatrimestre_alquiler numeric(18,0),
		bi_mes_alquiler numeric(18,0),
		bi_rango_etario_inquilino_alquiler numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Rango_Etario(bi_rango_etario_id),
		bi_alquiler_comision numeric(18,0),
		PRIMARY KEY(bi_rango_etario_inquilino_alquiler,bi_barrio_alquiler,bi_anio_alquiler,
		bi_cuatrimestre_alquiler, bi_mes_alquiler)
	)
	ALTER TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Alquiler
	ADD CONSTRAINT FK_Tiempo_Alquiler FOREIGN KEY (bi_anio_alquiler, bi_cuatrimestre_alquiler, bi_mes_alquiler) 
	REFERENCES CINCO_PALABRAS_CRACK.BI_Tiempo(bi_anio, bi_cuatrimestre, bi_mes)

	--CREACION TABLA DE HECHOS DE LAS VENTAS
	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Venta_Inmueble (
		bi_tipo_inmueble_VI numeric (18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble(bi_tipo_inmueble_id) NOT NULL,
		bi_localidad_VI numeric (18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Localidad(bi_localidad_id) NOT NULL,
		bi_anio_VI numeric(18,0),
		bi_cuatrimestre_VI numeric(18,0),
		bi_mes_VI numeric(18,0),
		bi_moneda_VI numeric(18,0) FOREIGN KEY REFERENCES CINCO_PALABRAS_CRACK.BI_Moneda(bi_moneda_id) NOT NULL,
		bi_cantidad_ventas_VI numeric (18,0),
		bi_precio_prom_m2_VI numeric(18,2),
		PRIMARY KEY(bi_moneda_VI,bi_localidad_VI,bi_tipo_inmueble_VI,bi_anio_VI,bi_cuatrimestre_VI,bi_mes_VI)
	)

	ALTER TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Venta_Inmueble
	ADD CONSTRAINT FK_Tiempo_Ventas FOREIGN KEY (bi_anio_VI, bi_cuatrimestre_VI, bi_mes_VI) 
	REFERENCES CINCO_PALABRAS_CRACK.BI_Tiempo(bi_anio, bi_cuatrimestre, bi_mes)

	--CREACION TABLA DE HECHOS DE PAGO ALQUILER
	CREATE TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Pago_Alquiler (
		bi_anio_PA numeric(18,0),
		bi_cuatrimestre_PA numeric(18,0),
		bi_mes_PA numeric(18,0),
		bi_cantidad_pagos_PA numeric(18,0),
		bi_porcentaje_aumento_PA numeric(18,2),
		bi_porcentaje_incumplimiento_PA numeric(18,2)
	)

	ALTER TABLE CINCO_PALABRAS_CRACK.BI_Hecho_Pago_Alquiler
	ADD CONSTRAINT FK_Tiempo_PagoAlquiler FOREIGN KEY (bi_anio_PA, bi_cuatrimestre_PA, bi_mes_PA) 
	REFERENCES CINCO_PALABRAS_CRACK.BI_Tiempo(bi_anio, bi_cuatrimestre, bi_mes)
END
GO

EXEC CINCO_PALABRAS_CRACK.creacionDatosBI
GO

----------------------------------FUNCIONES-----------------------------------------

CREATE FUNCTION CINCO_PALABRAS_CRACK.RangoM2(@m2 numeric(10,0))
RETURNS numeric(18,0)
AS
BEGIN
    DECLARE @rangoM2_id numeric(18,0)

    SELECT @rangoM2_id = bi_rango_m2_id FROM CINCO_PALABRAS_CRACK.BI_Rango_M2
    WHERE @m2 >= bi_inicio_R2 
	AND @m2 <= bi_fin_R2

    RETURN @rangoM2_id
END
GO

CREATE FUNCTION CINCO_PALABRAS_CRACK.Cuatrimestre (@fecha smalldatetime)
RETURNS numeric(18,0)
AS
BEGIN
    DECLARE @mes numeric(18,0)
    DECLARE @cuatrimestre numeric(18,0)

    SET @mes = MONTH(@fecha)

    SET @cuatrimestre = 
        CASE 
            WHEN @mes BETWEEN 1 AND 4 THEN 1
            WHEN @mes BETWEEN 5 AND 8 THEN 2
            WHEN @mes BETWEEN 9 AND 12 THEN 3
            ELSE 0  
        END

    RETURN @cuatrimestre
END
GO

CREATE FUNCTION CINCO_PALABRAS_CRACK.RangoEtario (@fechaNacimiento DATE)
RETURNS numeric(18,0)
AS
BEGIN
    DECLARE @edad numeric(18,0)
    DECLARE @rangoEtario_id numeric(18,0)
    
    SET @edad = DATEDIFF(YEAR, @fechaNacimiento, GETDATE())
    
    IF @edad <= 25
        SET @rangoEtario_id = 1
    ELSE IF @edad <= 35
        SET @rangoEtario_id = 2
    ELSE IF @edad <= 50
        SET @rangoEtario_id = 3
    ELSE
        SET @rangoEtario_id = 4

    RETURN @rangoEtario_id
END
GO

-------------------------------MIGRACION-----------------------------------------

CREATE PROCEDURE CINCO_PALABRAS_CRACK.migracionDatosBI
AS
BEGIN
	--MIGRACIÓN BI_Tiempo
	DECLARE @anio numeric(18,0) = 2023
	DECLARE @anio_fin numeric(18,0) = 2030
	DECLARE @cuatrimestre numeric(18,0)
	DECLARE @mes numeric(18,0)

	WHILE @anio <= @anio_fin
	BEGIN
	  SET @cuatrimestre = 1

	  WHILE @cuatrimestre <= 3
	  BEGIN
		SET @mes = 1 + ((@cuatrimestre - 1) * 4)

		WHILE @mes <= @cuatrimestre * 4
		BEGIN
		  INSERT INTO CINCO_PALABRAS_CRACK.BI_Tiempo (bi_anio, bi_cuatrimestre, bi_mes)
		  VALUES (@anio, @cuatrimestre, @mes)

		  SET @mes = @mes + 1
		END

		SET @cuatrimestre = @cuatrimestre + 1
	  END

	  SET @anio = @anio + 1
	END

	--MIGRACIÓN Ubicacion
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Provincia
	SELECT * FROM CINCO_PALABRAS_CRACK.Provincia

	INSERT INTO CINCO_PALABRAS_CRACK.BI_Localidad
	SELECT localidad_id, provincia_localidad_id, nombre_localidad 
	FROM CINCO_PALABRAS_CRACK.Localidad

	INSERT INTO CINCO_PALABRAS_CRACK.BI_Barrio
	SELECT barrio_id, localidad_barrio_id, nombre_barrio 
	FROM CINCO_PALABRAS_CRACK.barrio

	--MIGRACION BI_Sucursal
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Sucursal
	SELECT sucursal_id, localidad_sucursal, nombre_sucursal, direccion_sucursal, telefono_sucursal
	FROM CINCO_PALABRAS_CRACK.Sucursal

	--MIGRACIÓN BI_RangoEtario
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Rango_Etario 
	VALUES (1,0,25),
		   (2,25,35),
		   (3,35,50),
		   (4,50,100)

	--MIGRACIÓN BI_TipoInmueble
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble
	SELECT * FROM CINCO_PALABRAS_CRACK.Tipo_Inmueble

	--MIGRACIÓN BI_Ambientes
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Ambientes
	SELECT * FROM CINCO_PALABRAS_CRACK.Ambiente

	--MIGRACIÓN BI_RangoM2
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Rango_M2 
	VALUES (1,0,35),
		   (2,35,55),
		   (3,55,75),
		   (4,75,100),
		   (5,100,100000)

	--MIGRACIÓN BI_TipoOperacion
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Tipo_Operacion
	SELECT * FROM CINCO_PALABRAS_CRACK.Tipo_Operacion

	--MIGRACIÓN BI_Moneda
	INSERT INTO BI_Moneda 
	SELECT * FROM CINCO_PALABRAS_CRACK.Moneda

	--MIGRACIÓN BI_Hecho_Anuncio
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio
		(bi_anio_publicacion_anuncio,
		bi_cuatrimestre_publicacion_anuncio,
		bi_mes_publicacion_anuncio,
		bi_tipo_operacion_anuncio,
		bi_moneda_anuncio,
		bi_ambientes_anuncio,
		bi_tipo_inmueble_anuncio,
		bi_metros_cuadrados_anuncio,
		bi_barrio_anuncio,
		bi_precio_prom_anuncio, 
		bi_duracion_anuncio,
		bi_rango_etario_agente_anuncio, 
		bi_sucursal_anuncio,
		bi_comision_prom_anuncio,
		bi_cantidad_anuncio,
		bi_cantidad_operaciones_anuncio,
		bi_monto_total_operaciones_anuncio)
	SELECT 
		YEAR(a.fecha_publicacion) AS 'Anio de inicio',
		CINCO_PALABRAS_CRACK.Cuatrimestre(a.fecha_publicacion) AS 'Cuatrimestre de inicio',
		MONTH(a.fecha_publicacion) AS 'Mes de inicio',
		a.tipo_operacion_id_anuncio AS 'Tipo operacion', 
		a.moneda_id_anuncio AS 'Tipo moneda',
		ambiente_id_inmueble AS 'Cantidad de ambientes',
		tipo_inmueble_id_inmueble AS 'Tipo de inmueble',
		CINCO_PALABRAS_CRACK.RangoM2(superficie_total) AS 'Rango M2',
		barrio_id_inmueble AS 'Barrio del anuncio',
		AVG(a.precio_publicacion) AS 'Precio promedio',
		AVG(DATEDIFF(DAY, a.fecha_publicacion, a.fecha_finalizacion)) AS 'Cant dias publicacion-finalizacion',
		CINCO_PALABRAS_CRACK.RangoEtario(fecha_nacimiento_agente) AS 'Rango Etario del agente',
		sucursal_id_agente AS 'Sucursal donde fue publicado el anuncio' ,
		AVG(ISNULL((CASE WHEN tipo_operacion_id_anuncio < 3 THEN alq.comision_alquiler WHEN tipo_operacion_id_anuncio = 3 THEN v.comision_venta ELSE 0 END),0)) AS 'Promedio Comision',
		COUNT(*) AS 'Cantidad Anuncios',
		SUM(CASE WHEN alq.alquiler_id IS NOT NULL OR v.venta_id IS NOT NULL THEN 1 ELSE 0 END) AS 'Cantidad operaciones concretadas',
		SUM(CASE WHEN alq.alquiler_id IS NOT NULL OR v.venta_id IS NOT NULL THEN a.precio_publicacion ELSE 0 END) AS 'Monto total operaciones concretadas'
	FROM CINCO_PALABRAS_CRACK.Anuncio a
	JOIN CINCO_PALABRAS_CRACK.Inmueble ON inmueble_id = inmueble_id_anuncio
	JOIN CINCO_PALABRAS_CRACK.Moneda ON moneda_id = moneda_id_anuncio
	JOIN CINCO_PALABRAS_CRACK.Barrio ON barrio_id = barrio_id_inmueble
	JOIN CINCO_PALABRAS_CRACK.Agente_Inmobiliario ON agente_id = agente_id_anuncio 
	LEFT JOIN CINCO_PALABRAS_CRACK.Venta v ON v.anuncio_id_venta = a.anuncio_id
    LEFT JOIN CINCO_PALABRAS_CRACK.Alquiler alq ON a.anuncio_id = alq.anuncio_id_alquiler_anuncio
	GROUP BY YEAR(a.fecha_publicacion),
		CINCO_PALABRAS_CRACK.Cuatrimestre(a.fecha_publicacion),
		MONTH(a.fecha_publicacion),
        barrio_id_inmueble,
		sucursal_id_agente,
		CINCO_PALABRAS_CRACK.RangoEtario(fecha_nacimiento_agente),
		tipo_inmueble_id_inmueble,
        ambiente_id_inmueble,
        CINCO_PALABRAS_CRACK.RangoM2(superficie_total),
		tipo_operacion_id_anuncio,
        moneda_id_anuncio

	--MIGRACIÓN BI_Hecho_Alquiler
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Hecho_Alquiler 
		(bi_rango_etario_inquilino_alquiler,
		bi_barrio_alquiler,
		bi_anio_alquiler,
		bi_cuatrimestre_alquiler,
		bi_mes_alquiler,
		bi_alquiler_comision)
	SELECT 
		CINCO_PALABRAS_CRACK.RangoEtario(fecha_nacimiento_inquilino),
		barrio_id_inmueble,
		YEAR(alqui.fecha_inicio_alquiler),
		CINCO_PALABRAS_CRACK.Cuatrimestre(alqui.fecha_inicio_alquiler),
		MONTH(alqui.fecha_inicio_alquiler),
		AVG(alqui.comision_alquiler)
	FROM CINCO_PALABRAS_CRACK.Alquiler alqui
	JOIN CINCO_PALABRAS_CRACK.Inquilino_Alquiler ON alquiler_id_IA = alquiler_id
	JOIN CINCO_PALABRAS_CRACK.Inquilino ON inquilino_id = inquilino_id_IA
	JOIN CINCO_PALABRAS_CRACK.Anuncio ON anuncio_id = anuncio_id_alquiler_anuncio
	JOIN CINCO_PALABRAS_CRACK.Inmueble ON inmueble_id = inmueble_id_anuncio
	GROUP BY YEAR(alqui.fecha_inicio_alquiler),
	CINCO_PALABRAS_CRACK.Cuatrimestre(alqui.fecha_inicio_alquiler),
	MONTH(alqui.fecha_inicio_alquiler),
	CINCO_PALABRAS_CRACK.RangoEtario(fecha_nacimiento_inquilino),
	barrio_id_inmueble


	
	--MIGRACIÓN BI_Hecho_Pago_Alquiler
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Hecho_Pago_Alquiler
		(bi_anio_PA,
		bi_cuatrimestre_PA,
		bi_mes_PA,
		bi_porcentaje_incumplimiento_PA,
		bi_cantidad_pagos_PA,
		bi_porcentaje_aumento_PA)	
	SELECT YEAR(actual.fecha_pago) AS 'Año de pago',
		CINCO_PALABRAS_CRACK.Cuatrimestre(actual.fecha_pago) AS 'Cuatrimestre de pago',
		MONTH(actual.fecha_pago) AS 'Mes de pago',
		SUM(CASE WHEN (DATEDIFF(DAY, actual.fecha_pago, actual.fin_periodo) < 0) THEN 1 ELSE 0 END) / COUNT(*) * 100 AS 'Porcentaje Incumplimiento',
		COUNT(*) AS 'Cantidad de pagos',
		SUM((actual.importe - anterior.importe)/anterior.importe*100)/ COUNT(*) AS 'Promedio Porcentaje Aumento'
	FROM CINCO_PALABRAS_CRACK.Pago_Alquiler actual
	JOIN CINCO_PALABRAS_CRACK.Pago_Alquiler anterior ON anterior.alquiler_id_PA = actual.alquiler_id_PA AND DATEDIFF(MONTH,anterior.fecha_pago,actual.fecha_pago) = 1 
	GROUP BY YEAR(actual.fecha_pago),
	CINCO_PALABRAS_CRACK.Cuatrimestre(actual.fecha_pago),
	MONTH(actual.fecha_pago)


	--MIGRACIÓN BI_Hecho_Venta_Inmueble
	INSERT INTO CINCO_PALABRAS_CRACK.BI_Hecho_Venta_Inmueble 
		(bi_moneda_VI,
		bi_localidad_VI ,
		bi_tipo_inmueble_VI,
		bi_anio_VI,
		bi_cuatrimestre_VI,
		bi_mes_VI,
		bi_precio_prom_m2_VI,
		bi_cantidad_ventas_VI)
	SELECT v.moneda_id_venta,
		localidad_barrio_id AS 'Barrio del inmueble vendido',
		tipo_inmueble_id_inmueble AS 'Tipo de inmueble vendido',
		YEAR(v.fecha_venta) AS 'Año de la venta',
		CINCO_PALABRAS_CRACK.Cuatrimestre(v.fecha_venta) AS 'Cuatrimestre ',
		MONTH(v.fecha_venta) AS 'Mes de la venta',
		AVG(v.precio_venta / CINCO_PALABRAS_CRACK.RangoM2(superficie_total)) 'precio promedio por Metro Cuadrado',
		count(distinct v.venta_id) as 'Cantidad de ventas'
	FROM CINCO_PALABRAS_CRACK.Venta v
	JOIN CINCO_PALABRAS_CRACK.Anuncio ON anuncio_id = v.anuncio_id_venta
	JOIN CINCO_PALABRAS_CRACK.Inmueble ON inmueble_id = inmueble_id_anuncio
	JOIN CINCO_PALABRAS_CRACK.Barrio ON barrio_id = barrio_id_inmueble
	GROUP BY v.moneda_id_venta, 
		localidad_barrio_id,
		tipo_inmueble_id_inmueble,
		YEAR(v.fecha_venta),
		CINCO_PALABRAS_CRACK.Cuatrimestre(v.fecha_venta),
		MONTH(v.fecha_venta)
	
END
GO

EXEC CINCO_PALABRAS_CRACK.migracionDatosBI
GO	

-------------------------------VISTAS-----------------------------------------

/*Vista 1: Duración promedio (en días) que se encuentran publicados los anuncios
según el tipo de operación (alquiler, venta, etc), barrio y ambientes para cada
cuatrimestre de cada año. Se consideran todos los anuncios que se dieron de alta
en ese cuatrimestre. La duración se calcula teniendo en cuenta la fecha de alta y
la fecha de finalización.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_duracion_promedio_anuncios
AS
SELECT bi_anio_publicacion_anuncio AS 'Año publicacion anuncio',
	bi_cuatrimestre_publicacion_anuncio AS 'Cuatrimestre publicacion anuncio',
	id_descripcion_tipo_operacion 'Tipo Operacion',
	bi_cantidad_detalle 'Ambientes',
	bi_nombre_barrio AS 'Barrio donde se publico el anuncio',
	AVG(bi_duracion_anuncio) AS 'Duracion promedio en dias'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio 
	JOIN CINCO_PALABRAS_CRACK.BI_Barrio ON bi_barrio_id = bi_barrio_anuncio
	JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Operacion  ON bi_tipo_operacion_anuncio = bi_tipo_operacion_id
	JOIN CINCO_PALABRAS_CRACK.BI_Ambientes  ON bi_ambientes_anuncio = bi_ambientes_id
GROUP BY bi_anio_publicacion_anuncio ,
	bi_cuatrimestre_publicacion_anuncio,
	bi_nombre_barrio,
	bi_cantidad_detalle,
	id_descripcion_tipo_operacion
GO

/*Vista 2: Precio promedio de los anuncios de inmuebles según el tipo de operación
(alquiler, venta, etc), tipo de inmueble y rango m2 para cada cuatrimestre/año.
Se consideran todos los anuncios que se dieron de alta en ese cuatrimestre. El
precio se debe expresar en el tipo de moneda que corresponda, identificando de
cuál se trata.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_precio_promedio_anuncio
AS
SELECT bi_anio_publicacion_anuncio AS 'Año publicacion anuncio',
	bi_cuatrimestre_publicacion_anuncio AS 'Cuatrimestre publicacion anuncio',
    id_descripcion_tipo_operacion AS 'Tipo Operacion',
    bi_nombre_tipo_inmueble AS 'Tipo Inmueble',
    bi_inicio_R2 AS 'Rango Inicio',
    bi_fin_R2 AS 'Rango Fin',
    bi_detalle_moneda AS 'Moneda Detalle',
    AVG(bi_precio_prom_anuncio) AS 'Precio promedio'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio 
    JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Operacion ON bi_tipo_operacion_anuncio = bi_tipo_operacion_id
    JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble ON bi_tipo_inmueble_anuncio = bi_tipo_inmueble_id 
    JOIN CINCO_PALABRAS_CRACK.BI_Rango_M2 ON bi_metros_cuadrados_anuncio = bi_rango_m2_id
    JOIN CINCO_PALABRAS_CRACK.BI_Moneda ON bi_moneda_anuncio = bi_moneda_id 
GROUP BY bi_anio_publicacion_anuncio,
    bi_cuatrimestre_publicacion_anuncio,
    id_descripcion_tipo_operacion,
    bi_nombre_tipo_inmueble,
    bi_inicio_R2,
    bi_fin_R2,
    bi_detalle_moneda
GO

/*Vista 3: Los 5 barrios más elegidos para alquilar en función del rango etario de los
inquilinos para cada cuatrimestre/año. Se calcula en función de los alquileres
dados de alta en dicho periodo.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_barrios_mas_elegidos_alquilar
AS
SELECT TOP (5) bi_anio_alquiler AS 'Año publicacion anuncio',
	bi_cuatrimestre_alquiler AS 'Cuatrimestre publicacion anuncio',
    bi_inicio_RE AS 'Rango etario inicio',
    bi_fin_RE AS 'Rango etario fin',
    bi_nombre_barrio AS 'Barrio',
    COUNT(*) AS 'Cantidad Alquileres'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Alquiler
    JOIN CINCO_PALABRAS_CRACK.BI_Rango_Etario ON bi_rango_etario_id = bi_rango_etario_inquilino_alquiler
    JOIN CINCO_PALABRAS_CRACK.BI_Barrio ON bi_barrio_id = bi_barrio_alquiler

GROUP BY bi_anio_alquiler,
    bi_cuatrimestre_alquiler,
    bi_inicio_RE,
    bi_fin_RE,
    bi_nombre_barrio
ORDER BY COUNT(*) DESC
GO

/*Vista 4: Los 5 barrios más elegidos para alquilar en función del rango etario de los
inquilinos para cada cuatrimestre/año. Se calcula en función de los alquileres
dados de alta en dicho periodo.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_porcentaje_incumplimiento
AS
SELECT 
    bi_anio_PA AS 'Año del pago',
    bi_mes_PA AS 'Mes del pago',
	SUM(bi_porcentaje_incumplimiento_PA * bi_cantidad_pagos_PA) / SUM(bi_cantidad_pagos_PA) AS 'Porcentaje incumplimiento'
FROM
    CINCO_PALABRAS_CRACK.BI_Hecho_Pago_Alquiler 
GROUP BY
    bi_anio_PA,
    bi_mes_PA
GO

/*Vista 5: Porcentaje promedio de incremento del valor de los alquileres para los
contratos en curso por mes/anio. Se calcula tomando en cuenta el ultimo pago
con respecto al del mes en curso, unicamente de aquellos alquileres que hayan
tenido aumento y están activos.*/

CREATE VIEW CINCO_PALABRAS_CRACK.porcentaje_promedio_incremento_alquileres
AS
SELECT 
    bi_anio_PA,
    bi_mes_PA,
    SUM(bi_porcentaje_aumento_PA * bi_cantidad_pagos_PA) / SUM(bi_cantidad_pagos_PA) AS 'Porcentaje promedio de incremento'
FROM
    CINCO_PALABRAS_CRACK.BI_Hecho_Pago_Alquiler 
GROUP BY
    bi_anio_PA,
    bi_mes_PA
GO

/*Vista 6: Precio promedio de m2 de la venta de inmuebles según el tipo de inmueble y
la localidad para cada cuatrimestre/año. Se calcula en función de las ventas
concretadas.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_precio_promedio_M2Ventas
AS
SELECT bi_anio_VI as 'Anio de inicio',
    bi_cuatrimestre_VI as 'Cuatrimestre de venta',
    bi_nombre_tipo_inmueble AS 'Tipo de inmueble',
    bi_localidad_VI as 'Localidad en donde se vendio',
    SUM(bi_precio_prom_m2_VI * bi_cantidad_ventas_VI)/SUM(bi_cantidad_ventas_VI) AS 'Precio promedio por venta'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Venta_Inmueble
    JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Inmueble ON bi_tipo_inmueble_VI = bi_tipo_inmueble_id
	JOIN CINCO_PALABRAS_CRACK.BI_Moneda on bi_moneda_VI = bi_moneda_id
GROUP BY bi_anio_VI,
    bi_cuatrimestre_VI,
    bi_nombre_tipo_inmueble,
    bi_localidad_VI,
    bi_detalle_moneda
GO

/*Vista 7: Valor promedio de la comisión según el tipo de operación (alquiler, venta, etc)
y sucursal para cada cuatrimestre/año. Se calcula en función de los alquileres y
ventas concretadas dentro del periodo.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_valor_promedio_comision
AS
SELECT id_descripcion_tipo_operacion AS 'Tipo Operacion',
    bi_nombre_sucursal AS 'Sucursal',
	bi_anio_publicacion_anuncio AS 'Anio publicacion anuncio',
    bi_cuatrimestre_publicacion_anuncio AS 'Cuatrimestre publicacion anuncio',
    SUM(bi_comision_prom_anuncio * bi_cantidad_anuncio) / SUM(bi_cantidad_anuncio) AS 'Valor promedio comision'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio 
    JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Operacion ON bi_tipo_operacion_anuncio = bi_tipo_operacion_id
    JOIN CINCO_PALABRAS_CRACK.BI_Sucursal ON bi_sucursal_anuncio = bi_sucursal_id
GROUP BY id_descripcion_tipo_operacion,
    bi_nombre_sucursal,
	bi_anio_publicacion_anuncio,
    bi_cuatrimestre_publicacion_anuncio
GO

/*Vista 8: Porcentaje de operaciones concretadas (tanto de alquileres como ventas) por
cada sucursal, según el rango etario de los empleados por año en función de la
cantidad de anuncios publicados en ese mismo año.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_porcentaje_operaciones_concretadas
AS
SELECT t.bi_anio,
	t.bi_cuatrimestre,
	s.bi_nombre_sucursal,
	r.bi_inicio_RE,
	r.bi_fin_RE,
	SUM(a.bi_cantidad_operaciones_anuncio) / SUM(a.bi_cantidad_anuncio) * 100 AS 'Porcentaje operaciones concretadas'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio AS a
	JOIN CINCO_PALABRAS_CRACK.BI_Tiempo AS t ON CONCAT(a.bi_anio_publicacion_anuncio, a.bi_cuatrimestre_publicacion_anuncio, a.bi_mes_publicacion_anuncio) = CONCAT(t.bi_anio, t.bi_cuatrimestre, t.bi_mes)
	JOIN CINCO_PALABRAS_CRACK.BI_Sucursal AS s ON a.bi_sucursal_anuncio = s.bi_sucursal_id
	JOIN CINCO_PALABRAS_CRACK.BI_Rango_Etario AS r ON a.bi_rango_etario_agente_anuncio = r.bi_rango_etario_id
GROUP BY t.bi_anio,
	t.bi_cuatrimestre,
	s.bi_nombre_sucursal,
	r.bi_inicio_RE,
	r.bi_fin_RE
GO

/*Vista 9: Monto total de cierre de contratos por tipo de operación (tanto de alquileres
como ventas) por cada cuatrimestre y sucursal, diferenciando el tipo de moneda.*/

CREATE VIEW CINCO_PALABRAS_CRACK.vista_monto_total_cierre_contratos
AS
SELECT t.bi_anio,
	t.bi_cuatrimestre,
	s.bi_sucursal_id,
	tipoO.id_descripcion_tipo_operacion,
	tipoM.bi_detalle_moneda,
	SUM(a.bi_monto_total_operaciones_anuncio) AS 'Monto total cierre contratos'
FROM CINCO_PALABRAS_CRACK.BI_Hecho_Anuncio AS a
	JOIN CINCO_PALABRAS_CRACK.BI_Tipo_Operacion tipoO ON a.bi_tipo_operacion_anuncio = tipoO.bi_tipo_operacion_id
	JOIN CINCO_PALABRAS_CRACK.BI_Moneda tipoM ON a.bi_moneda_anuncio = tipoM.bi_moneda_id
	JOIN CINCO_PALABRAS_CRACK.BI_Tiempo AS t ON CONCAT(a.bi_anio_publicacion_anuncio, a.bi_cuatrimestre_publicacion_anuncio, a.bi_mes_publicacion_anuncio) = CONCAT(t.bi_anio, t.bi_cuatrimestre, t.bi_mes)
	JOIN CINCO_PALABRAS_CRACK.BI_Sucursal AS s ON a.bi_sucursal_anuncio = s.bi_sucursal_id
WHERE
	a.bi_anio_publicacion_anuncio IS NOT NULL AND a.bi_cuatrimestre_publicacion_anuncio IS NOT NULL AND a.bi_mes_publicacion_anuncio IS NOT NULL
GROUP BY
	t.bi_anio,
	t.bi_cuatrimestre,
	s.bi_sucursal_id,
	tipoO.id_descripcion_tipo_operacion,
	tipoM.bi_detalle_moneda
GO

---------------------------FIN SCRIPT script_creacion_BI---------------------