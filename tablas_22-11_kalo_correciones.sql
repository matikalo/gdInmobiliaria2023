USE [GD2C2023]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] DROP CONSTRAINT [FK_Venta_Pago_Venta]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] DROP CONSTRAINT [FK_Venta_Comprador]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] DROP CONSTRAINT [FK_Venta_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago] DROP CONSTRAINT [FK_Periodo_Pago_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago] DROP CONSTRAINT [FK_Periodo_Pago_Pago_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta] DROP CONSTRAINT [FK_Pago_Venta_Venta]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta] DROP CONSTRAINT [FK_Pago_Venta_Pago_Venta]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler] DROP CONSTRAINT [FK_Pago_Alquiler_Medio_pago]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler] DROP CONSTRAINT [FK_Pago_Alquiler_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Localidad] DROP CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] DROP CONSTRAINT [FK_Inmueble_Caracteristica_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] DROP CONSTRAINT [FK_Inmueble_Caracteristica_Caracteristica]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] DROP CONSTRAINT [FK__Inmueble___inmue__7226EDCC]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] DROP CONSTRAINT [FK__Inmueble___carac__7132C993]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] DROP CONSTRAINT [FK_Inmueble_Tipo_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] DROP CONSTRAINT [FK_Inmueble_Propietario]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] DROP CONSTRAINT [FK_Inmueble_Estado_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] DROP CONSTRAINT [FK_Inmueble_Direccion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Duracion] DROP CONSTRAINT [FK_Duracion_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Direccion] DROP CONSTRAINT [FK_Direccion_Barrio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe] DROP CONSTRAINT [FK_Detalle_Importe_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe] DROP CONSTRAINT [FK_Detalle_Importe_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Barrio] DROP CONSTRAINT [FK_Barrio_Localidad]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] DROP CONSTRAINT [FK_Anuncio_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] DROP CONSTRAINT [FK_Anuncio_Tipo_Operacion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] DROP CONSTRAINT [FK_Anuncio_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] DROP CONSTRAINT [FK_Anuncio_Estado_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] DROP CONSTRAINT [FK_Anuncio_Agente_Inmobiliario]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Ambiente] DROP CONSTRAINT [FK_Ambiente_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Inquilino]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Estado_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Duracion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Detalle_Importe]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] DROP CONSTRAINT [FK_Agente_Inmobiliario_Sucursal]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Venta]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Venta]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Periodo]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Tipo_Periodo]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Operacion]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Tipo_Operacion]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Tipo_Inmueble]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Sucursal]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Sucursal]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Provincia]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Provincia]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Propietario]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Propietario]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Periodo_Pago]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Pago_Venta]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Pago_Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Medio_pago]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Medio_pago]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Localidad]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Localidad]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inquilino]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Inquilino]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Inmueble]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Estado_Inmueble]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Anuncio]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Estado_Anuncio]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Estado_Alquiler]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Duracion]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Duracion]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Direccion]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Direccion]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Detalle_Importe]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Comprador]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Comprador]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Caracteristica]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Caracteristica]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Barrio]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Barrio]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Anuncio]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Anuncio]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Ambiente]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Ambiente]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Alquiler]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario]    Script Date: 22/11/2023 23:24:59 ******/
DROP TABLE [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario]
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario](
	[agente_id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [numeric](18, 0) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
	[apellido] [nvarchar](20) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[telefono] [numeric](18, 0) NOT NULL,
	[mail] [nvarchar](100) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[sucursal_id] [int] NULL,
 CONSTRAINT [PK_Agente_Inmobiliario] PRIMARY KEY CLUSTERED 
(
	[agente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Alquiler](
	[alquiler_id] [int] IDENTITY(1,1) NOT NULL,
	[duracion_id] [int] NOT NULL,
	[inquilino_id] [int] NOT NULL,
	[fecha_inicio] [datetime] NOT NULL,
	[fecha_fin] [datetime] NOT NULL,
	[deposito] [money] NOT NULL,
	[gastos_averiguaciones] [money] NOT NULL,
	[estado_alquiler_id] [int] NOT NULL,
	[detalle_importe_id] [int] NOT NULL,
	[anuncio_id] [int] NOT NULL,
 CONSTRAINT [PK_Alquiler] PRIMARY KEY CLUSTERED 
(
	[alquiler_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Ambiente]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Ambiente](
	[ambiente_id] [int] IDENTITY(1,1) NOT NULL,
	[inmueble_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cantidad] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Ambiente] PRIMARY KEY CLUSTERED 
(
	[ambiente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Anuncio]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Anuncio](
	[anuncio_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Barrio]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Barrio](
	[barrio_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Caracteristica]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Caracteristica](
	[caracteristica_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Caracteristica] PRIMARY KEY CLUSTERED 
(
	[caracteristica_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Comprador]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Comprador](
	[comprador_id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [numeric](18, 0) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
	[apellido] [nvarchar](20) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[telefono] [numeric](18, 0) NOT NULL,
	[mail] [nvarchar](100) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
 CONSTRAINT [PK_Comprador] PRIMARY KEY CLUSTERED 
(
	[comprador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Detalle_Importe]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe](
	[detalle_importe_id] [int] IDENTITY(1,1) NOT NULL,
	[alquiler_id] [int] NULL,
	[tipo_periodo_id] [int] NULL,
	[inicio_periodo] [datetime] NULL,
	[fin_periodo] [datetime] NULL,
	[importe] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_importe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Direccion]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Direccion](
	[direccion_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Duracion]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Duracion](
	[duracion_id] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
	[tipo_periodo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[duracion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Estado_Alquiler](
	[estado_alquiler_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[estado_alquiler_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Anuncio]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Estado_Anuncio](
	[estado_anuncio_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado_Anuncio] PRIMARY KEY CLUSTERED 
(
	[estado_anuncio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Estado_Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Estado_Inmueble](
	[estado_inmueble_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Estado_Inmueble] PRIMARY KEY CLUSTERED 
(
	[estado_inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Inmueble](
	[inmueble_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica](
	[inmueble_id] [int] NOT NULL,
	[caracteristica_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inmueble_id] ASC,
	[caracteristica_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Inquilino]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Inquilino](
	[inquilino_id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [numeric](18, 0) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
	[apellido] [nvarchar](20) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[telefono] [numeric](18, 0) NOT NULL,
	[mail] [nvarchar](100) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[inquilino_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Localidad]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Localidad](
	[localidad_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Medio_pago]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Medio_pago](
	[medio_pago_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medio_pago] PRIMARY KEY CLUSTERED 
(
	[medio_pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Pago_Alquiler]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler](
	[pago_alquiler_id] [int] IDENTITY(1,1) NOT NULL,
	[alquiler_id] [int] NULL,
	[fecha_pago] [timestamp] NOT NULL,
	[importe] [money] NULL,
	[medio_pago_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pago_alquiler_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Pago_Venta]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta](
	[pago_venta_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Periodo_Pago]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago](
	[periodo_pago_id] [int] IDENTITY(1,1) NOT NULL,
	[pago_alquiler_id] [int] NULL,
	[tipo_periodo_id] [int] NULL,
	[numero_periodo_pago] [int] NULL,
	[fecha_inicio_periodo_pago] [datetime] NULL,
	[fecha_fin_periodo_pago] [datetime] NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[periodo_pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Propietario]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Propietario](
	[propietario_id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [numeric](18, 0) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
	[apellido] [nvarchar](20) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[telefono] [numeric](18, 0) NOT NULL,
	[mail] [nvarchar](100) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
 CONSTRAINT [PK_Propietario] PRIMARY KEY CLUSTERED 
(
	[propietario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Provincia]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Provincia](
	[provincia_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[provincia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Sucursal]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Sucursal](
	[sucursal_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Inmueble]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Tipo_Inmueble](
	[tipo_inmueble_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Inmueble] PRIMARY KEY CLUSTERED 
(
	[tipo_inmueble_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Operacion]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Tipo_Operacion](
	[tipo_operacion_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Operacion] PRIMARY KEY CLUSTERED 
(
	[tipo_operacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Tipo_Periodo]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Tipo_Periodo](
	[tipo_periodo_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[tipo_periodo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CINCO_PALABRAS_CRACK].[Venta]    Script Date: 22/11/2023 23:24:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CINCO_PALABRAS_CRACK].[Venta](
	[venta_id] [int] IDENTITY(1,1) NOT NULL,
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
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] ([agente_id], [dni], [nombre], [apellido], [fecha_registro], [telefono], [mail], [fecha_nacimiento], [sucursal_id]) VALUES (1, CAST(69385080 AS Numeric(18, 0)), N'GERMANA', N'Giménez', CAST(N'1949-12-30 00:00:00.000' AS DateTime), CAST(8701846 AS Numeric(18, 0)), N'germanagiménez@gmail.com', CAST(N'1949-12-30 00:00:00.000' AS DateTime), NULL)
GO
INSERT [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] ([agente_id], [dni], [nombre], [apellido], [fecha_registro], [telefono], [mail], [fecha_nacimiento], [sucursal_id]) VALUES (2, CAST(49400499 AS Numeric(18, 0)), N'LUDOVICO', N'Gallardo', CAST(N'1972-10-19 00:00:00.000' AS DateTime), CAST(37090613 AS Numeric(18, 0)), N'ludovicogallardo@gmail.com', CAST(N'1972-10-19 00:00:00.000' AS DateTime), NULL)
GO
INSERT [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] ([agente_id], [dni], [nombre], [apellido], [fecha_registro], [telefono], [mail], [fecha_nacimiento], [sucursal_id]) VALUES (3, CAST(65519586 AS Numeric(18, 0)), N'SUSANA', N'Cáceres', CAST(N'1990-05-27 00:00:00.000' AS DateTime), CAST(98412770 AS Numeric(18, 0)), N'susanacáceres@gmail.com', CAST(N'1990-05-27 00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (1, N'Cochera')
GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (2, N'Piscina')
GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (3, N'Calefaccion central')
GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (4, N'Aire acondicionado')
GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (5, N'Wifi')
GO
INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id], [descripcion]) VALUES (6, N'Amoblamiento')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Caracteristica] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Alquiler] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Alquiler] ([estado_alquiler_id], [descripcion]) VALUES (1, N'Rescindido')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Alquiler] ([estado_alquiler_id], [descripcion]) VALUES (2, N'Finalizado')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Alquiler] ([estado_alquiler_id], [descripcion]) VALUES (3, N'Activo')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Alquiler] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ([estado_anuncio_id], [descripcion]) VALUES (1, N'Vendido')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ([estado_anuncio_id], [descripcion]) VALUES (2, N'Finalizado')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ([estado_anuncio_id], [descripcion]) VALUES (3, N'Alquilado')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ([estado_anuncio_id], [descripcion]) VALUES (4, N'Activo')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Anuncio] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ([estado_inmueble_id], [descripcion]) VALUES (1, N'Muy bueno')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ([estado_inmueble_id], [descripcion]) VALUES (2, N'Bueno')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ([estado_inmueble_id], [descripcion]) VALUES (3, N'Malo')
GO
INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ([estado_inmueble_id], [descripcion]) VALUES (4, N'Excelente')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Estado_Inmueble] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Medio_pago] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Medio_pago] ([medio_pago_id], [descripcion]) VALUES (1, N'Efectivo')
GO
INSERT [CINCO_PALABRAS_CRACK].[Medio_pago] ([medio_pago_id], [descripcion]) VALUES (2, N'Cheque')
GO
INSERT [CINCO_PALABRAS_CRACK].[Medio_pago] ([medio_pago_id], [descripcion]) VALUES (3, N'Transferencia')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Medio_pago] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ([tipo_inmueble_id], [nombre]) VALUES (1, N'Oficina')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ([tipo_inmueble_id], [nombre]) VALUES (2, N'Departamento')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ([tipo_inmueble_id], [nombre]) VALUES (3, N'Casa')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ([tipo_inmueble_id], [nombre]) VALUES (4, N'PH')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] OFF
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ON 

GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id], [descripcion]) VALUES (1, N'Periodo dia')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id], [descripcion]) VALUES (2, N'Periodo Quincena')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id], [descripcion]) VALUES (3, N'Periodo Semana')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id], [descripcion]) VALUES (4, N'Periodo Mes')
GO
INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id], [descripcion]) VALUES (5, N'0')
GO
SET IDENTITY_INSERT [CINCO_PALABRAS_CRACK].[Tipo_Periodo] OFF
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario]  WITH CHECK ADD  CONSTRAINT [FK_Agente_Inmobiliario_Sucursal] FOREIGN KEY([sucursal_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Sucursal] ([sucursal_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] CHECK CONSTRAINT [FK_Agente_Inmobiliario_Sucursal]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Anuncio] FOREIGN KEY([anuncio_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Anuncio] ([anuncio_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Detalle_Importe] FOREIGN KEY([detalle_importe_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Detalle_Importe] ([detalle_importe_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Detalle_Importe]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Duracion] FOREIGN KEY([duracion_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Duracion] ([duracion_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Duracion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Estado_Alquiler] FOREIGN KEY([estado_alquiler_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Estado_Alquiler] ([estado_alquiler_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Estado_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Inquilino] FOREIGN KEY([inquilino_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Inquilino] ([inquilino_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Inquilino]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Ambiente]  WITH CHECK ADD  CONSTRAINT [FK_Ambiente_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Ambiente] CHECK CONSTRAINT [FK_Ambiente_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Agente_Inmobiliario] FOREIGN KEY([agente_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Agente_Inmobiliario] ([agente_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Agente_Inmobiliario]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Estado_Anuncio] FOREIGN KEY([estado_anuncio_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Estado_Anuncio] ([estado_anuncio_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Estado_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Tipo_Operacion] FOREIGN KEY([tipo_operacion_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Operacion] ([tipo_operacion_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Tipo_Operacion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_Anuncio_Tipo_Periodo] FOREIGN KEY([tipo_periodo_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Anuncio] CHECK CONSTRAINT [FK_Anuncio_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Localidad] FOREIGN KEY([localidad_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Localidad] ([localidad_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Barrio] CHECK CONSTRAINT [FK_Barrio_Localidad]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Importe_Alquiler] FOREIGN KEY([alquiler_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Alquiler] ([alquiler_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe] CHECK CONSTRAINT [FK_Detalle_Importe_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Importe_Tipo_Periodo] FOREIGN KEY([tipo_periodo_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Detalle_Importe] CHECK CONSTRAINT [FK_Detalle_Importe_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Barrio] FOREIGN KEY([barrio_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Barrio] ([barrio_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Direccion] CHECK CONSTRAINT [FK_Direccion_Barrio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Duracion]  WITH CHECK ADD  CONSTRAINT [FK_Duracion_Tipo_Periodo] FOREIGN KEY([tipo_periodo_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Duracion] CHECK CONSTRAINT [FK_Duracion_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Direccion] FOREIGN KEY([direccion_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Direccion] ([direccion_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Direccion]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Estado_Inmueble] FOREIGN KEY([estado_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Estado_Inmueble] ([estado_inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Estado_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Propietario] FOREIGN KEY([propietario_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Propietario] ([propietario_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Propietario]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Tipo_Inmueble] FOREIGN KEY([tipo_inmueble_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Inmueble] ([tipo_inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble] CHECK CONSTRAINT [FK_Inmueble_Tipo_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]  WITH CHECK ADD FOREIGN KEY([caracteristica_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]  WITH CHECK ADD FOREIGN KEY([inmueble_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Caracteristica_Caracteristica] FOREIGN KEY([caracteristica_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Caracteristica] ([caracteristica_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] CHECK CONSTRAINT [FK_Inmueble_Caracteristica_Caracteristica]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica]  WITH CHECK ADD  CONSTRAINT [FK_Inmueble_Caracteristica_Inmueble] FOREIGN KEY([inmueble_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Inmueble] ([inmueble_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Inmueble_Caracteristica] CHECK CONSTRAINT [FK_Inmueble_Caracteristica_Inmueble]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([provincia_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Provincia] ([provincia_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Alquiler_Alquiler] FOREIGN KEY([alquiler_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Alquiler] ([alquiler_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler] CHECK CONSTRAINT [FK_Pago_Alquiler_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Alquiler_Medio_pago] FOREIGN KEY([medio_pago_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Medio_pago] ([medio_pago_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Alquiler] CHECK CONSTRAINT [FK_Pago_Alquiler_Medio_pago]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Venta_Pago_Venta] FOREIGN KEY([medio_pago_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Medio_pago] ([medio_pago_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta] CHECK CONSTRAINT [FK_Pago_Venta_Pago_Venta]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Venta_Venta] FOREIGN KEY([venta_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Venta] ([venta_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Pago_Venta] CHECK CONSTRAINT [FK_Pago_Venta_Venta]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Pago_Pago_Alquiler] FOREIGN KEY([pago_alquiler_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Pago_Alquiler] ([pago_alquiler_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago] CHECK CONSTRAINT [FK_Periodo_Pago_Pago_Alquiler]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Periodo_Pago_Tipo_Periodo] FOREIGN KEY([tipo_periodo_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Tipo_Periodo] ([tipo_periodo_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Periodo_Pago] CHECK CONSTRAINT [FK_Periodo_Pago_Tipo_Periodo]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Anuncio] FOREIGN KEY([anuncio_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Anuncio] ([anuncio_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] CHECK CONSTRAINT [FK_Venta_Anuncio]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Comprador] FOREIGN KEY([comprador_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Comprador] ([comprador_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] CHECK CONSTRAINT [FK_Venta_Comprador]
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Pago_Venta] FOREIGN KEY([pago_venta_id])
REFERENCES [CINCO_PALABRAS_CRACK].[Pago_Venta] ([pago_venta_id])
GO
ALTER TABLE [CINCO_PALABRAS_CRACK].[Venta] CHECK CONSTRAINT [FK_Venta_Pago_Venta]
GO
