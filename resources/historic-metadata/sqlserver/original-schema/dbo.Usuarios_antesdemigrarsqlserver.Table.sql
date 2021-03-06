USE [sqm]
GO
/****** Object:  Table [dbo].[Usuarios_antesdemigrarsqlserver]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios_antesdemigrarsqlserver](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[iArea] [int] NOT NULL,
	[bActivo] [int] NULL,
	[szNombre] [nvarchar](255) NULL,
	[szApellido] [nvarchar](255) NULL,
	[szCedula] [nvarchar](255) NULL,
	[szCedulaExp] [nvarchar](255) NULL,
	[szClave] [nvarchar](255) NULL,
	[szClasificacion] [nvarchar](255) NULL,
	[szCargo] [nvarchar](255) NULL,
	[szExtension] [nvarchar](255) NULL,
	[dtFeInDay] [nvarchar](255) NULL,
	[dtFeInMonth] [nvarchar](255) NULL,
	[dtFeInYear] [nvarchar](255) NULL,
	[dtFeCumpleDay] [nvarchar](255) NULL,
	[dtFeCumpleMonth] [nvarchar](255) NULL,
	[szSexo] [nvarchar](255) NULL,
	[szDireccion] [nvarchar](255) NULL,
	[szTelefono] [nvarchar](255) NULL,
	[szEmail] [nvarchar](255) NULL,
	[szTelTrabajo] [nvarchar](255) NULL,
	[szTelMovil] [nvarchar](255) NULL,
	[szEmpresa] [nvarchar](255) NULL,
	[szSalario] [nvarchar](255) NULL,
	[szTipoContrato] [nvarchar](255) NULL,
	[szModalidadSalario] [nvarchar](255) NULL,
	[szCentroCostos] [nvarchar](255) NULL,
	[iPerfil] [int] NOT NULL,
	[idUsuarioJefe] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [iarea]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [iarea] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[iArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
/****** Object:  Index [iperfil]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [iperfil] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[iPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [szapellido]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [szapellido] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szApellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [szcedula]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [szcedula] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szCedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [szclave]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [szclave] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szClave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [szemail]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [szemail] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [sznombre]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [sznombre] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [szsexo]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [szsexo] ON [dbo].[Usuarios_antesdemigrarsqlserver]
(
	[szSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
