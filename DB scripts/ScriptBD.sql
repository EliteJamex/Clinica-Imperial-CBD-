USE [dbClinicaImperial]
GO
/****** Object:  Table [db_owner].[beneficios_pagos]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[beneficios_pagos](
	[id_beneficio_pago] [int] IDENTITY(1,1) NOT NULL,
	[tipo_beneficio] [varchar](80) NOT NULL,
	[bono_valor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_beneficio_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[descuento_empleados]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[descuento_empleados](
	[id_descuento_empleado] [int] IDENTITY(1,1) NOT NULL,
	[tipo_descuento] [varchar](80) NOT NULL,
	[valor] [varchar](100) NULL,
	[cantidad_periodos] [int] NULL,
	[numero_pagos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_descuento_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[extras_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[extras_empleado](
	[id_extras_empleado] [int] IDENTITY(1,1) NOT NULL,
	[horas] [int] NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_fin] [date] NULL,
	[valor] [int] NULL,
	[total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_extras_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[incapacidades]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[incapacidades](
	[id_incapacidades] [int] IDENTITY(1,1) NOT NULL,
	[dias_incapacidad] [int] NOT NULL,
	[valor_dias] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_incapacidades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[liquidacion_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[liquidacion_empleado](
	[id_liquidacion_empleado] [int] IDENTITY(1,1) NOT NULL,
	[valor] [varchar](100) NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_fin] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_liquidacion_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[medicina_prepagada]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[medicina_prepagada](
	[id_medicina_prepagada] [int] IDENTITY(1,1) NOT NULL,
	[valor_medicina] [varchar](80) NOT NULL,
	[entidad] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicina_prepagada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[pago_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[pago_empleado](
	[id_pago_empleado] [int] IDENTITY(1,1) NOT NULL,
	[forma_pago] [varchar](80) NOT NULL,
	[tipo_cuenta] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[pago_salario_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[pago_salario_empleado](
	[id_pago_empleado] [int] IDENTITY(1,1) NOT NULL,
	[id_liquidacion_empleado] [int] NOT NULL,
	[id_extra_empleado] [int] NOT NULL,
	[salario_empleado] [varchar](100) NOT NULL,
	[mes_pago] [date] NOT NULL,
	[id_beneficio_pago] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_descuento_empleado] [int] NOT NULL,
	[id_pension_empleado] [int] NOT NULL,
	[id_medicina_prepagada] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[pension_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[pension_empleado](
	[id_pension_empleado] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[valor] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pension_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_owner].[salud_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[salud_empleado](
	[id_salud] [int] IDENTITY(1,1) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[valor_pagar] [varchar](100) NULL,
	[id_incapacidades] [int] NULL,
	[categoria] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[id_almacen] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ingreso] [datetime] NOT NULL,
	[fecha_salida] [datetime] NULL,
	[stock] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asignacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asignacion](
	[id_asignacion] [int] IDENTITY(1,1) NOT NULL,
	[observacion] [varchar](255) NOT NULL,
	[id_evento] [int] NOT NULL,
	[id_habitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asignacion_elementos]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asignacion_elementos](
	[id_asignacion_elemento] [int] IDENTITY(1,1) NOT NULL,
	[id_habitacion] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asignacion_elemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asignacion_servicio]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asignacion_servicio](
	[id_asignacion_servicio] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_servicio] [int] NOT NULL,
	[id_sede] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asignacion_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[beneficiario]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[beneficiario](
	[id_beneficiario] [int] IDENTITY(1,1) NOT NULL,
	[numero_beneficiario] [int] NOT NULL,
	[parentesco] [varchar](100) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[id_descuento_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_beneficiario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
	[area] [varchar](50) NOT NULL,
	[id_sede] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](255) NOT NULL,
	[estado] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cirugia]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cirugia](
	[id_cirugia] [int] IDENTITY(0,1) NOT NULL,
	[id_tipocirugia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id_ciudad] [int] IDENTITY(0,1) NOT NULL,
	[ciudad] [varchar](50) NULL,
	[id_departamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[id_consulta] [int] IDENTITY(0,1) NOT NULL,
	[id_tipoconsulta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta_Externa]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta_Externa](
	[id_consultaexterna] [int] IDENTITY(0,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consultaexterna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[id_contacto] [int] IDENTITY(0,1) NOT NULL,
	[contacto] [varchar](100) NULL,
	[id_tipocontacto] [int] NOT NULL,
	[id_persona] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato_fin]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrato_fin](
	[id_contrato_fin] [int] IDENTITY(1,1) NOT NULL,
	[motivo_retiro] [varchar](80) NOT NULL,
	[fecha_retiro] [date] NULL,
	[duracion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrato_fin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[convenios]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[convenios](
	[id_convenio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_eps] [varchar](50) NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_final] [date] NULL,
	[estado] [varchar](50) NOT NULL,
	[id_sede] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_convenio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_departamento] [int] IDENTITY(0,1) NOT NULL,
	[departamento] [varchar](50) NOT NULL,
	[id_pais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dotacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dotacion](
	[id_dotacion] [int] IDENTITY(1,1) NOT NULL,
	[tipo_dotacion] [varchar](80) NOT NULL,
	[talla] [varchar](10) NOT NULL,
	[tiempo_dotacion] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dotacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [varchar](80) NOT NULL,
	[nombre_empleado] [varchar](80) NOT NULL,
	[area_empleado] [varchar](80) NOT NULL,
	[tipo_documeto] [varchar](80) NOT NULL,
	[edad] [int] NOT NULL,
	[tipo_sexo] [varchar](3) NOT NULL,
	[telefono] [int] NOT NULL,
	[id_tipo_empleado] [int] NOT NULL,
	[id_tipo_sangre] [int] NOT NULL,
	[id_Jornada] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eps_persona]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eps_persona](
	[id_eps] [int] IDENTITY(0,1) NOT NULL,
	[nombre_eps] [varchar](50) NULL,
	[id_tipoafiliacion] [int] NULL,
	[id_tipocotizante] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_eps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_contrado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_contrado](
	[id_estado_contato] [int] IDENTITY(1,1) NOT NULL,
	[estado_contrato] [varchar](80) NOT NULL,
	[id_contrato_fin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado_contato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[id_evento] [int] IDENTITY(0,1) NOT NULL,
	[fecha_llegada] [date] NULL,
	[hora_llegada] [time](7) NULL,
	[fecha_salida] [date] NULL,
	[hora_salida] [time](7) NULL,
	[id_persona] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examenes]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examenes](
	[id_examenes] [int] IDENTITY(0,1) NOT NULL,
	[id_tipoexamen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_examenes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fallecimiento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fallecimiento](
	[id_fallecimiento] [int] IDENTITY(0,1) NOT NULL,
	[id_causa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fallecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formula]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formula](
	[id_formula] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_formula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[id_genero] [int] IDENTITY(0,1) NOT NULL,
	[genero] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[habitaciones]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[habitaciones](
	[id_habitacion] [int] IDENTITY(1,1) NOT NULL,
	[num_habitacion] [int] NOT NULL,
	[piso] [int] NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[id_tipoHabitacion] [int] NOT NULL,
	[id_sede] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_habitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospitalizacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitalizacion](
	[id_hospitalizacion] [int] IDENTITY(0,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hospitalizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[info_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_empleado](
	[id_info_empleado] [int] IDENTITY(1,1) NOT NULL,
	[id_riesgo] [int] NOT NULL,
	[id_tarjetaprofesional] [int] NOT NULL,
	[id_contrato] [int] NOT NULL,
	[id_cargo] [int] NOT NULL,
	[id_estadocontarto] [int] NOT NULL,
	[id_dotacion] [int] NOT NULL,
	[id_novedad] [int] NOT NULL,
	[id_eps_empleado] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_sueldo] [int] NOT NULL,
	[id_beneficiario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_info_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jornada]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jornada](
	[id_jornada] [int] IDENTITY(1,1) NOT NULL,
	[Horario] [datetime] NULL,
	[Zona_horaria] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jornada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[id_laboratorio] [int] IDENTITY(0,1) NOT NULL,
	[nombre_laboratorio] [varchar](50) NOT NULL,
	[precio] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_laboratorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[id_medicamentos] [int] IDENTITY(0,1) NOT NULL,
	[cantidad] [bigint] NOT NULL,
	[id_formula] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medios_pagos_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medios_pagos_empleado](
	[id_medio_pagos_empleado] [int] IDENTITY(1,1) NOT NULL,
	[tarjeta] [varchar](80) NOT NULL,
	[numero_tarjeta] [int] NOT NULL,
	[tipo_cuenta] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medio_pagos_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacimiento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacimiento](
	[id_nacimiento] [int] IDENTITY(0,1) NOT NULL,
	[id_causa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nacimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nivel_riesgo]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nivel_riesgo](
	[id_riesgo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_riesgo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_riesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[novedades]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[novedades](
	[id_novedad] [int] IDENTITY(1,1) NOT NULL,
	[tipo_novedad] [varchar](50) NOT NULL,
	[dias_de_novedad] [int] NOT NULL,
	[regreso_empleado] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_novedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id_pais] [int] IDENTITY(0,1) NOT NULL,
	[pais] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pariente_persona]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pariente_persona](
	[id_parientepersona] [int] IDENTITY(0,1) NOT NULL,
	[id_pariente] [int] NULL,
	[id_persona] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_parientepersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parientes]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parientes](
	[id_pariente] [int] IDENTITY(0,1) NOT NULL,
	[parentesco] [varchar](50) NOT NULL,
	[id_persona] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pariente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id_persona] [int] IDENTITY(0,1) NOT NULL,
	[cedula] [bigint] NOT NULL,
	[primer_nombre] [varchar](100) NOT NULL,
	[segundo_nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NOT NULL,
	[segundo_apellido] [varchar](100) NOT NULL,
	[fecha_nacimiento] [date] NULL,
	[id_eps] [int] NULL,
	[id_genero] [int] NOT NULL,
	[id_ciudad] [int] NOT NULL,
	[id_parientepersona] [int] NULL,
	[id_tipoidentificacion] [int] NOT NULL,
	[id_tiposangre] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[precio_habitacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[precio_habitacion](
	[id_preciohabitacion] [int] IDENTITY(1,1) NOT NULL,
	[precio] [float] NULL,
	[id_asignacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_preciohabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[marca] [varchar](100) NOT NULL,
	[fecha_ingreso] [datetime] NOT NULL,
	[fecha_caducidad] [date] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[id_categoria] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_producto_compra] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_proveedor] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_clinico]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_clinico](
	[id_registroclinico] [int] IDENTITY(0,1) NOT NULL,
	[alta] [bit] NULL,
	[estado] [bit] NULL,
	[id_evento] [int] NOT NULL,
	[id_detallefacprocedimiento] [int] NOT NULL,
	[id_registroevento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_registroclinico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_evento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_evento](
	[id_registroevento] [int] IDENTITY(0,1) NOT NULL,
	[observaciones] [varchar](500) NULL,
	[recomendaciones] [varchar](500) NULL,
	[fecha_ingresoevento] [date] NULL,
	[hora_ingresoevento] [time](7) NULL,
	[fecha_salidaevento] [date] NULL,
	[hora_salidaevento] [time](7) NULL,
	[id_empleado] [int] NOT NULL,
	[id_nacimiento] [int] NULL,
	[id_fallecimiento] [int] NULL,
	[id_formula] [int] NULL,
	[id_hospitalizacion] [int] NULL,
	[id_urgencia] [int] NULL,
	[id_examenes] [int] NULL,
	[id_consulta] [int] NULL,
	[id_cirugia] [int] NULL,
	[id_tipoevento] [int] NULL,
	[id_consultaexterna] [int] NULL,
	[id_asignacion] [int] NULL,
 CONSTRAINT [PK__registro__69C94E8E406B569A] PRIMARY KEY CLUSTERED 
(
	[id_registroevento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sede]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sede](
	[id_sede] [int] IDENTITY(1,1) NOT NULL,
	[sede] [varchar](50) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sueldo_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sueldo_empleado](
	[id_sueldo] [int] IDENTITY(1,1) NOT NULL,
	[salario] [bigint] NOT NULL,
	[bonificacion] [bigint] NOT NULL,
	[horas_extras] [int] NOT NULL,
	[beneficios_monetarios] [varchar](2) NOT NULL,
	[id_medio_pagos_empleado] [int] NOT NULL,
	[id_pago_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sueldo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tajeta_Profesional]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tajeta_Profesional](
	[id_tarjetaprofesional] [int] IDENTITY(1,1) NOT NULL,
	[codigo_tajetaprofesional] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarjetaprofesional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_afiliacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_afiliacion](
	[id_tipoafiliacion] [int] IDENTITY(0,1) NOT NULL,
	[tipo_afiliacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoafiliacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_causa]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_causa](
	[id_causa] [int] IDENTITY(0,1) NOT NULL,
	[causas] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_causa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cirugia]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cirugia](
	[id_tipocirugia] [int] IDENTITY(0,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[precio] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipocirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Consulta]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Consulta](
	[id_tipoconsulta] [int] IDENTITY(0,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[precio] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoconsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_contacto]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_contacto](
	[id_tipocontacto] [int] IDENTITY(0,1) NOT NULL,
	[tipo_contacto] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipocontacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_contrato]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_contrato](
	[id_contrato] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_contrato] [varchar](50) NOT NULL,
	[Duracion_contrato] [int] NOT NULL,
	[Fecha_ingreso] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_cotizante]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_cotizante](
	[id_tipocotizante] [int] IDENTITY(0,1) NOT NULL,
	[tipo_cotizante] [varchar](50) NULL,
	[id_eps] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipocotizante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_documento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_documento](
	[id_tipodocumento] [int] IDENTITY(0,1) NOT NULL,
	[tipo_documento] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipodocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_empleado]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_empleado](
	[id_tipo_empleado] [int] IDENTITY(1,1) NOT NULL,
	[tipo_empleado] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_evento]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_evento](
	[id_tipoevento] [int] IDENTITY(0,1) NOT NULL,
	[nombre_tipoevento] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoevento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Examen]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Examen](
	[id_tipoexamen] [int] IDENTITY(0,1) NOT NULL,
	[precio] [bigint] NOT NULL,
	[id_laboratorio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoexamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_habitacion]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_habitacion](
	[id_tipoHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[observaciones] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_sangre]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_sangre](
	[id_tiposangre] [int] IDENTITY(0,1) NOT NULL,
	[tipo_sangre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tiposangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_servicio]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_servicio](
	[id_tipo_servicio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_servicio] [varchar](255) NOT NULL,
	[estado] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Triage]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Triage](
	[id_triage] [int] IDENTITY(0,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[observaciones] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_triage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urgencia]    Script Date: 09/10/2022 23:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urgencia](
	[id_urgencias] [int] IDENTITY(0,1) NOT NULL,
	[id_triage] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_urgencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [db_owner].[pago_empleado]  WITH CHECK ADD FOREIGN KEY([id_pago_empleado])
REFERENCES [db_owner].[pago_salario_empleado] ([id_pago_empleado])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_beneficio_pago])
REFERENCES [db_owner].[beneficios_pagos] ([id_beneficio_pago])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_descuento_empleado])
REFERENCES [db_owner].[descuento_empleados] ([id_descuento_empleado])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_extra_empleado])
REFERENCES [db_owner].[extras_empleado] ([id_extras_empleado])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_liquidacion_empleado])
REFERENCES [db_owner].[liquidacion_empleado] ([id_liquidacion_empleado])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_medicina_prepagada])
REFERENCES [db_owner].[medicina_prepagada] ([id_medicina_prepagada])
GO
ALTER TABLE [db_owner].[pago_salario_empleado]  WITH CHECK ADD FOREIGN KEY([id_pension_empleado])
REFERENCES [db_owner].[pension_empleado] ([id_pension_empleado])
GO
ALTER TABLE [db_owner].[salud_empleado]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [db_owner].[salud_empleado]  WITH CHECK ADD FOREIGN KEY([id_incapacidades])
REFERENCES [db_owner].[incapacidades] ([id_incapacidades])
GO
ALTER TABLE [dbo].[almacen]  WITH CHECK ADD  CONSTRAINT [fk_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[almacen] CHECK CONSTRAINT [fk_producto]
GO
ALTER TABLE [dbo].[asignacion]  WITH CHECK ADD FOREIGN KEY([id_evento])
REFERENCES [dbo].[Evento] ([id_evento])
GO
ALTER TABLE [dbo].[asignacion]  WITH CHECK ADD  CONSTRAINT [fk_habitacion_asignacion] FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitaciones] ([id_habitacion])
GO
ALTER TABLE [dbo].[asignacion] CHECK CONSTRAINT [fk_habitacion_asignacion]
GO
ALTER TABLE [dbo].[asignacion_elementos]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[asignacion_elementos]  WITH CHECK ADD  CONSTRAINT [fk_habitacion] FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitaciones] ([id_habitacion])
GO
ALTER TABLE [dbo].[asignacion_elementos] CHECK CONSTRAINT [fk_habitacion]
GO
ALTER TABLE [dbo].[asignacion_elementos]  WITH CHECK ADD  CONSTRAINT [fk_productos] FOREIGN KEY([id_almacen])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[asignacion_elementos] CHECK CONSTRAINT [fk_productos]
GO
ALTER TABLE [dbo].[asignacion_servicio]  WITH CHECK ADD  CONSTRAINT [fk_sede] FOREIGN KEY([id_sede])
REFERENCES [dbo].[sede] ([id_sede])
GO
ALTER TABLE [dbo].[asignacion_servicio] CHECK CONSTRAINT [fk_sede]
GO
ALTER TABLE [dbo].[asignacion_servicio]  WITH CHECK ADD  CONSTRAINT [fk_tipo_servicio] FOREIGN KEY([id_tipo_servicio])
REFERENCES [dbo].[tipo_servicio] ([id_tipo_servicio])
GO
ALTER TABLE [dbo].[asignacion_servicio] CHECK CONSTRAINT [fk_tipo_servicio]
GO
ALTER TABLE [dbo].[beneficiario]  WITH CHECK ADD FOREIGN KEY([id_descuento_empleado])
REFERENCES [db_owner].[descuento_empleados] ([id_descuento_empleado])
GO
ALTER TABLE [dbo].[cargo]  WITH CHECK ADD FOREIGN KEY([id_sede])
REFERENCES [dbo].[sede] ([id_sede])
GO
ALTER TABLE [dbo].[Cirugia]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCIRUGIA_CIRUGIA] FOREIGN KEY([id_tipocirugia])
REFERENCES [dbo].[Tipo_Cirugia] ([id_tipocirugia])
GO
ALTER TABLE [dbo].[Cirugia] CHECK CONSTRAINT [FK_TIPOCIRUGIA_CIRUGIA]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAMENTO_CIUDAD] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[Departamento] ([id_departamento])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_DEPARTAMENTO_CIUDAD]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCONSULTA_CONSULTA] FOREIGN KEY([id_tipoconsulta])
REFERENCES [dbo].[Tipo_Consulta] ([id_tipoconsulta])
GO
ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_TIPOCONSULTA_CONSULTA]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_CONTACTO] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_PERSONA_CONTACTO]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCONTACTO_CONTACTO] FOREIGN KEY([id_tipocontacto])
REFERENCES [dbo].[Tipo_contacto] ([id_tipocontacto])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_TIPOCONTACTO_CONTACTO]
GO
ALTER TABLE [dbo].[convenios]  WITH CHECK ADD  CONSTRAINT [fk_sede_convenios] FOREIGN KEY([id_sede])
REFERENCES [dbo].[sede] ([id_sede])
GO
ALTER TABLE [dbo].[convenios] CHECK CONSTRAINT [fk_sede_convenios]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_PAIS_DEPARTAMENTO] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Pais] ([id_pais])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_PAIS_DEPARTAMENTO]
GO
ALTER TABLE [dbo].[dotacion]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_Jornada])
REFERENCES [dbo].[jornada] ([id_jornada])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_tipo_sangre])
REFERENCES [dbo].[Tipo_sangre] ([id_tiposangre])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_tipo_empleado])
REFERENCES [dbo].[tipo_empleado] ([id_tipo_empleado])
GO
ALTER TABLE [dbo].[Eps_persona]  WITH CHECK ADD  CONSTRAINT [FK_TIPOAFILIACION_EPSPERSONA] FOREIGN KEY([id_tipoafiliacion])
REFERENCES [dbo].[Tipo_afiliacion] ([id_tipoafiliacion])
GO
ALTER TABLE [dbo].[Eps_persona] CHECK CONSTRAINT [FK_TIPOAFILIACION_EPSPERSONA]
GO
ALTER TABLE [dbo].[Eps_persona]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCOTIZANTE_EPSPERSONA] FOREIGN KEY([id_tipocotizante])
REFERENCES [dbo].[Tipo_cotizante] ([id_tipocotizante])
GO
ALTER TABLE [dbo].[Eps_persona] CHECK CONSTRAINT [FK_TIPOCOTIZANTE_EPSPERSONA]
GO
ALTER TABLE [dbo].[estado_contrado]  WITH CHECK ADD FOREIGN KEY([id_contrato_fin])
REFERENCES [dbo].[contrato_fin] ([id_contrato_fin])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD  CONSTRAINT [FK_TIPOEXAMEN_EXAMEN] FOREIGN KEY([id_tipoexamen])
REFERENCES [dbo].[Tipo_Examen] ([id_tipoexamen])
GO
ALTER TABLE [dbo].[Examenes] CHECK CONSTRAINT [FK_TIPOEXAMEN_EXAMEN]
GO
ALTER TABLE [dbo].[Fallecimiento]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCAUSA_FALLECIMIENTO] FOREIGN KEY([id_causa])
REFERENCES [dbo].[Tipo_causa] ([id_causa])
GO
ALTER TABLE [dbo].[Fallecimiento] CHECK CONSTRAINT [FK_TIPOCAUSA_FALLECIMIENTO]
GO
ALTER TABLE [dbo].[habitaciones]  WITH CHECK ADD FOREIGN KEY([id_sede])
REFERENCES [dbo].[sede] ([id_sede])
GO
ALTER TABLE [dbo].[habitaciones]  WITH CHECK ADD  CONSTRAINT [fk_tipo_habitacion] FOREIGN KEY([id_tipoHabitacion])
REFERENCES [dbo].[tipo_habitacion] ([id_tipoHabitacion])
GO
ALTER TABLE [dbo].[habitaciones] CHECK CONSTRAINT [fk_tipo_habitacion]
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_beneficiario])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargo] ([id_cargo])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_contrato])
REFERENCES [dbo].[tipo_contrato] ([id_contrato])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_dotacion])
REFERENCES [dbo].[dotacion] ([id_dotacion])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_eps_empleado])
REFERENCES [dbo].[Eps_persona] ([id_eps])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_estadocontarto])
REFERENCES [dbo].[estado_contrado] ([id_estado_contato])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_novedad])
REFERENCES [dbo].[novedades] ([id_novedad])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_riesgo])
REFERENCES [dbo].[nivel_riesgo] ([id_riesgo])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_sueldo])
REFERENCES [dbo].[sueldo_empleado] ([id_sueldo])
GO
ALTER TABLE [dbo].[info_empleado]  WITH CHECK ADD FOREIGN KEY([id_tarjetaprofesional])
REFERENCES [dbo].[tajeta_Profesional] ([id_tarjetaprofesional])
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD  CONSTRAINT [FK_FORMULA_MEDICAMENTOS] FOREIGN KEY([id_formula])
REFERENCES [dbo].[Formula] ([id_formula])
GO
ALTER TABLE [dbo].[Medicamentos] CHECK CONSTRAINT [FK_FORMULA_MEDICAMENTOS]
GO
ALTER TABLE [dbo].[Nacimiento]  WITH CHECK ADD  CONSTRAINT [FK_TIPOCAUSA_NACIMIENTO] FOREIGN KEY([id_causa])
REFERENCES [dbo].[Tipo_causa] ([id_causa])
GO
ALTER TABLE [dbo].[Nacimiento] CHECK CONSTRAINT [FK_TIPOCAUSA_NACIMIENTO]
GO
ALTER TABLE [dbo].[Pariente_persona]  WITH CHECK ADD  CONSTRAINT [FK_PARIENTE_PARIENTEPERSONA] FOREIGN KEY([id_pariente])
REFERENCES [dbo].[Parientes] ([id_pariente])
GO
ALTER TABLE [dbo].[Pariente_persona] CHECK CONSTRAINT [FK_PARIENTE_PARIENTEPERSONA]
GO
ALTER TABLE [dbo].[Pariente_persona]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_PARIENTEPERSONA] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Pariente_persona] CHECK CONSTRAINT [FK_PERSONA_PARIENTEPERSONA]
GO
ALTER TABLE [dbo].[Parientes]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_PARIENTE] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Parientes] CHECK CONSTRAINT [FK_PERSONA_PARIENTE]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_CIUDAD_PERSONA] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[Ciudad] ([id_ciudad])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_CIUDAD_PERSONA]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_EPSPERSONA_PERSONA] FOREIGN KEY([id_eps])
REFERENCES [dbo].[Eps_persona] ([id_eps])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_EPSPERSONA_PERSONA]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_GENERO_PERSONA] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Genero] ([id_genero])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_GENERO_PERSONA]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_TIPODOCUMENTO_PERSONA] FOREIGN KEY([id_tipoidentificacion])
REFERENCES [dbo].[Tipo_documento] ([id_tipodocumento])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_TIPODOCUMENTO_PERSONA]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_TIPOSANGRE_PERSONA] FOREIGN KEY([id_tiposangre])
REFERENCES [dbo].[Tipo_sangre] ([id_tiposangre])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_TIPOSANGRE_PERSONA]
GO
ALTER TABLE [dbo].[precio_habitacion]  WITH CHECK ADD  CONSTRAINT [fk_asignacion_precio] FOREIGN KEY([id_asignacion])
REFERENCES [dbo].[asignacion] ([id_asignacion])
GO
ALTER TABLE [dbo].[precio_habitacion] CHECK CONSTRAINT [fk_asignacion_precio]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [fk_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_categoria]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [fk_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_proveedor]
GO
ALTER TABLE [dbo].[registro_clinico]  WITH CHECK ADD  CONSTRAINT [FK_REGISTROEVENTO_REGISTROCLINICO] FOREIGN KEY([id_registroevento])
REFERENCES [dbo].[registro_evento] ([id_registroevento])
GO
ALTER TABLE [dbo].[registro_clinico] CHECK CONSTRAINT [FK_REGISTROEVENTO_REGISTROCLINICO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_CIRUGIA_REGISTROEVENTO] FOREIGN KEY([id_cirugia])
REFERENCES [dbo].[Cirugia] ([id_cirugia])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_CIRUGIA_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTA_REGISTROEVENTO] FOREIGN KEY([id_consulta])
REFERENCES [dbo].[Consulta] ([id_consulta])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_CONSULTA_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTAEXTERNA_REGISTROEVENTO] FOREIGN KEY([id_consultaexterna])
REFERENCES [dbo].[Consulta_Externa] ([id_consultaexterna])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_CONSULTAEXTERNA_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_EXAMENES_REGISTROEVENTO] FOREIGN KEY([id_examenes])
REFERENCES [dbo].[Examenes] ([id_examenes])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_EXAMENES_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_FALLECIMIENTO_REGISTROEVENTO] FOREIGN KEY([id_fallecimiento])
REFERENCES [dbo].[Fallecimiento] ([id_fallecimiento])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_FALLECIMIENTO_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_FORMULA_REGISTROEVENTO] FOREIGN KEY([id_formula])
REFERENCES [dbo].[Formula] ([id_formula])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_FORMULA_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_HOSPITALIZACION_REGISTROEVENTO] FOREIGN KEY([id_hospitalizacion])
REFERENCES [dbo].[Hospitalizacion] ([id_hospitalizacion])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_HOSPITALIZACION_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_NACIMIENTO_REGISTROEVENTO] FOREIGN KEY([id_nacimiento])
REFERENCES [dbo].[Nacimiento] ([id_nacimiento])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_NACIMIENTO_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_TIPOEVENTO_REGISTROEVENTO] FOREIGN KEY([id_tipoevento])
REFERENCES [dbo].[Tipo_evento] ([id_tipoevento])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_TIPOEVENTO_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[registro_evento]  WITH CHECK ADD  CONSTRAINT [FK_URGENCIA_REGISTROEVENTO] FOREIGN KEY([id_urgencia])
REFERENCES [dbo].[Urgencia] ([id_urgencias])
GO
ALTER TABLE [dbo].[registro_evento] CHECK CONSTRAINT [FK_URGENCIA_REGISTROEVENTO]
GO
ALTER TABLE [dbo].[sueldo_empleado]  WITH CHECK ADD FOREIGN KEY([id_medio_pagos_empleado])
REFERENCES [dbo].[medios_pagos_empleado] ([id_medio_pagos_empleado])
GO
ALTER TABLE [dbo].[sueldo_empleado]  WITH CHECK ADD FOREIGN KEY([id_pago_empleado])
REFERENCES [db_owner].[pago_empleado] ([id_pago_empleado])
GO
ALTER TABLE [dbo].[Tipo_Examen]  WITH CHECK ADD  CONSTRAINT [FK_LABORATORIO_TIPOEXAMEN] FOREIGN KEY([id_laboratorio])
REFERENCES [dbo].[Laboratorio] ([id_laboratorio])
GO
ALTER TABLE [dbo].[Tipo_Examen] CHECK CONSTRAINT [FK_LABORATORIO_TIPOEXAMEN]
GO
ALTER TABLE [dbo].[Urgencia]  WITH CHECK ADD  CONSTRAINT [FK_TRIAGE_URGENCIA] FOREIGN KEY([id_triage])
REFERENCES [dbo].[Triage] ([id_triage])
GO
ALTER TABLE [dbo].[Urgencia] CHECK CONSTRAINT [FK_TRIAGE_URGENCIA]
GO
