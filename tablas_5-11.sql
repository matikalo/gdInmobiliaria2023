USE [GD2C2023]
GO
/****** Object:  Schema [cinco_palabras_crack]    Script Date: 5/11/2023 22:28:02 ******/
CREATE SCHEMA [cinco_palabras_crack]
GO
/****** Object:  Table [cinco_palabras_crack].[Agente_Inmobiliario]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Agente_Inmobiliario](
	[agente_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Agente_Inmobiliario] PRIMARY KEY CLUSTERED 
(
	[agente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Ambiente]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Ambiente](
	[ambiente_id] [int] NOT NULL,
	[inmueble_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Ambiente] PRIMARY KEY CLUSTERED 
(
	[ambiente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Anuncio]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Anuncio](
	[anuncio_id] [int] NOT NULL,
	[fecha_publicacion] [timestamp] NOT NULL,
	[agente_id] [int] NOT NULL,
	[tipo_operacion_id] [int] NOT NULL,
	[inmueble_id] [int] NOT NULL,
	[tipo_periodo_id] [int] NOT NULL,
	[costo_publicacion] [money] NOT NULL,
	[fecha_finalizacion] [datetime] NOT NULL,
	[precio_publicado] [money] NOT NULL,
	[moneda] [varchar](3) NOT NULL,
	[estado_anuncio_id] [int] NOT NULL,
 CONSTRAINT [PK_Anuncio_1] PRIMARY KEY CLUSTERED 
(
	[anuncio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Barrio]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Barrio](
	[barrio_id] [int] NOT NULL,
	[localidad_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[barrio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Caracteristica]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Caracteristica](
	[caracteristica_id] [int] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Caracteristica] PRIMARY KEY CLUSTERED 
(
	[caracteristica_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Comprador]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Comprador](
	[comprador_id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
 CONSTRAINT [PK_Comprador] PRIMARY KEY CLUSTERED 
(
	[comprador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Direccion]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Direccion](
	[direccion_id] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[altura] [int] NOT NULL,
	[barrio_id] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[direccion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Estado_Anuncio]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Estado_Anuncio](
	[estado_anuncio_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado_Anuncio] PRIMARY KEY CLUSTERED 
(
	[estado_anuncio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Estado_Inmueble]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Estado_Inmueble](
	[estado_inmueble_id] [int] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Estado_Inmueble] PRIMARY KEY CLUSTERED 
(
	[estado_inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Inmueble]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Inmueble](
	[inmueble_id] [int] NOT NULL,
	[tipo_inmueble_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[propietario_id] [int] NOT NULL,
	[direccion_id] [int] NOT NULL,
	[superficie_total] [int] NOT NULL,
	[disposicion] [varchar](20) NOT NULL,
	[orientacion] [varchar](20) NOT NULL,
	[estado_id] [int] NOT NULL,
	[antiguedad] [int] NOT NULL,
	[expensas] [money] NOT NULL,
 CONSTRAINT [PK_Inmueble] PRIMARY KEY CLUSTERED 
(
	[inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Inmueble_Caracteristica]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cinco_palabras_crack].[Inmueble_Caracteristica](
	[inmueble_id] [int] NOT NULL,
	[caracteristica_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [cinco_palabras_crack].[Localidad]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Localidad](
	[localidad_id] [int] NOT NULL,
	[provincia_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[localidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Medio_pago]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Medio_pago](
	[medio_pago_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medio_pago] PRIMARY KEY CLUSTERED 
(
	[medio_pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Pago_Venta]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Pago_Venta](
	[pago_venta_id] [int] NOT NULL,
	[importe] [money] NOT NULL,
	[moneda] [varbinary](3) NOT NULL,
	[medio_pago_id] [int] NOT NULL,
	[cotizacion] [int] NOT NULL,
	[venta_id] [int] NOT NULL,
 CONSTRAINT [PK_Pago_Venta] PRIMARY KEY CLUSTERED 
(
	[pago_venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Propietario]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Propietario](
	[propietario_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[telefono] [int] NOT NULL,
 CONSTRAINT [PK_Propietario] PRIMARY KEY CLUSTERED 
(
	[propietario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Provincia]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Provincia](
	[provincia_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Sucursal]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cinco_palabras_crack].[Sucursal](
	[sucursal_id] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [cinco_palabras_crack].[Tipo_Inmueble]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Tipo_Inmueble](
	[tipo_inmueble_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Inmueble] PRIMARY KEY CLUSTERED 
(
	[tipo_inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Tipo_Operacion]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Tipo_Operacion](
	[tipo_operacion_id] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Operacion] PRIMARY KEY CLUSTERED 
(
	[tipo_operacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cinco_palabras_crack].[Venta]    Script Date: 5/11/2023 22:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cinco_palabras_crack].[Venta](
	[venta_id] [int] NOT NULL,
	[fecha_venta] [timestamp] NOT NULL,
	[precio_venta] [money] NOT NULL,
	[moneda] [varbinary](3) NOT NULL,
	[anuncio_id] [int] NOT NULL,
	[comprador_id] [int] NOT NULL,
	[pago_venta_id] [int] NOT NULL,
	[comision_venta] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Inmueble_Caracteristica]    Script Date: 5/11/2023 22:28:02 ******/
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica] ADD  CONSTRAINT [IX_Inmueble_Caracteristica] UNIQUE NONCLUSTERED 
(
	[inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inmueble_Caracteristica_1]    Script Date: 5/11/2023 22:28:02 ******/
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica] ADD  CONSTRAINT [IX_Inmueble_Caracteristica_1] UNIQUE NONCLUSTERED 
(
	[caracteristica_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [cinco_palabras_crack].[Agente_Inmobiliario]  WITH CHECK ADD  CONSTRAINT [FK_Agente_Inmobiliario_Sucursal] FOREIGN KEY([sucursal_id])
REFERENCES [cinco_palabras_crack].[Sucursal] ([sucursal_id])
GO
ALTER TABLE [cinco_palabras_crack].[Agente_Inmobiliario] CHECK CONSTRAINT [FK_Agente_Inmobiliario_Sucursal]
GO
ALTER TABLE [cinco_palabras_crack].[Ambiente]  WITH CHECK ADD  CONSTRAINT [FK_Ambiente_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [cinco_palabras_crack].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [cinco_palabras_crack].[Ambiente] CHECK CONSTRAINT [FK_Ambiente_Inmueble]
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Agente_Inmobiliario] FOREIGN KEY([agente_id])
REFERENCES [cinco_palabras_crack].[Agente_Inmobiliario] ([agente_id])
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Agente_Inmobiliario]
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Estado_Anuncio] FOREIGN KEY([estado_anuncio_id])
REFERENCES [cinco_palabras_crack].[Estado_Anuncio] ([estado_anuncio_id])
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Estado_Anuncio]
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [cinco_palabras_crack].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Inmueble]
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Tipo_Operacion] FOREIGN KEY([tipo_operacion_id])
REFERENCES [cinco_palabras_crack].[Tipo_Operacion] ([tipo_operacion_id])
GO
ALTER TABLE [cinco_palabras_crack].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Tipo_Operacion]
GO
ALTER TABLE [cinco_palabras_crack].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Localidad] FOREIGN KEY([localidad_id])
REFERENCES [cinco_palabras_crack].[Localidad] ([localidad_id])
GO
ALTER TABLE [cinco_palabras_crack].[Barrio] CHECK CONSTRAINT [FK_Barrio_Localidad]
GO
ALTER TABLE [cinco_palabras_crack].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Barrio] FOREIGN KEY([barrio_id])
REFERENCES [cinco_palabras_crack].[Barrio] ([barrio_id])
GO
ALTER TABLE [cinco_palabras_crack].[Direccion] CHECK CONSTRAINT [FK_Direccion_Barrio]
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Estado_Inmueble] FOREIGN KEY([estado_id])
REFERENCES [cinco_palabras_crack].[Estado_Inmueble] ([estado_inmueble_id])
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Estado_Inmueble]
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Propietario] FOREIGN KEY([propietario_id])
REFERENCES [cinco_palabras_crack].[Propietario] ([propietario_id])
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Propietario]
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Tipo_Inmueble] FOREIGN KEY([tipo_inmueble_id])
REFERENCES [cinco_palabras_crack].[Tipo_Inmueble] ([tipo_inmueble_id])
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Tipo_Inmueble]
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Caracteristica_Caracteristica] FOREIGN KEY([caracteristica_id])
REFERENCES [cinco_palabras_crack].[Caracteristica] ([caracteristica_id])
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica] CHECK CONSTRAINT [FK_Inmueble_Caracteristica_Caracteristica]
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Caracteristica_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [cinco_palabras_crack].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [cinco_palabras_crack].[Inmueble_Caracteristica] CHECK CONSTRAINT [FK_Inmueble_Caracteristica_Inmueble]
GO
ALTER TABLE [cinco_palabras_crack].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([provincia_id])
REFERENCES [cinco_palabras_crack].[Provincia] ([provincia_id])
GO
ALTER TABLE [cinco_palabras_crack].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [cinco_palabras_crack].[Pago_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Venta_Pago_Venta] FOREIGN KEY([medio_pago_id])
REFERENCES [cinco_palabras_crack].[Medio_pago] ([medio_pago_id])
GO
ALTER TABLE [cinco_palabras_crack].[Pago_Venta] CHECK CONSTRAINT [FK_Pago_Venta_Pago_Venta]
GO
ALTER TABLE [cinco_palabras_crack].[Pago_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Venta_Venta] FOREIGN KEY([venta_id])
REFERENCES [cinco_palabras_crack].[Venta] ([venta_id])
GO
ALTER TABLE [cinco_palabras_crack].[Pago_Venta] CHECK CONSTRAINT [FK_Pago_Venta_Venta]
GO
ALTER TABLE [cinco_palabras_crack].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Anuncio] FOREIGN KEY([anuncio_id])
REFERENCES [cinco_palabras_crack].[Anuncio] ([anuncio_id])
GO
ALTER TABLE [cinco_palabras_crack].[Venta] CHECK CONSTRAINT [FK_Venta_Anuncio]
GO
ALTER TABLE [cinco_palabras_crack].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Comprador] FOREIGN KEY([comprador_id])
REFERENCES [cinco_palabras_crack].[Comprador] ([comprador_id])
GO
ALTER TABLE [cinco_palabras_crack].[Venta] CHECK CONSTRAINT [FK_Venta_Comprador]
GO
ALTER TABLE [cinco_palabras_crack].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Pago_Venta] FOREIGN KEY([pago_venta_id])
REFERENCES [cinco_palabras_crack].[Pago_Venta] ([pago_venta_id])
GO
ALTER TABLE [cinco_palabras_crack].[Venta] CHECK CONSTRAINT [FK_Venta_Pago_Venta]
GO
