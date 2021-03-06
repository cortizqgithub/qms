USE [sqm]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[dtFecha] [int] NULL,
	[szNombre] [varchar](255) NULL,
	[szNit] [varchar](255) NULL,
	[szDireccion] [varchar](255) NULL,
	[szCiudad] [varchar](255) NULL,
	[szTelefono] [varchar](255) NULL,
	[szFax] [varchar](255) NULL,
	[szEmail] [varchar](255) NULL,
	[szSitioWeb] [varchar](255) NULL,
	[szRepresentante] [varchar](255) NULL,
	[szCedulaRepresentante] [varchar](255) NULL,
	[szCiudadCCRepresentante] [varchar](255) NULL,
	[szContacto] [varchar](255) NULL,
	[bGrancontribuyente] [int] NULL,
	[bExentoReteFuente] [int] NULL,
	[bFacturoIva] [int] NULL,
	[bAutoretenedor] [int] NULL,
	[bExtranjeroSinDomicilio] [int] NULL,
	[bRegistradoCamara] [int] NULL,
	[szOtroServicio] [varchar](255) NULL,
	[szCamaraRegistro] [varchar](50) NULL,
	[szDescuentoCial] [varchar](50) NULL,
	[szPlazoPago] [varchar](255) NULL,
	[szEntidadFinanciera] [varchar](255) NULL,
	[szSucursal] [varchar](50) NULL,
	[szNroCuenta] [varchar](255) NULL,
	[bTipoCuenta] [int] NULL,
	[bCertificadoCalidad] [int] NULL,
	[bCertificandose] [int] NULL,
	[szAvanceCertificacion] [varchar](255) NULL,
	[iGradoImportancia] [int] NULL,
	[iGradoControl] [int] NULL,
	[szPuntaje] [varchar](50) NULL,
	[szImageForm] [varchar](50) NULL,
	[bActivo] [int] NULL,
	[bNinguna] [int] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [DF_Proveedores_bNinguna]  DEFAULT (0) FOR [bNinguna]
GO
