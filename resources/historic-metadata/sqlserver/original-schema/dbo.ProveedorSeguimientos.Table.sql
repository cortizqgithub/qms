USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorSeguimientos]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorSeguimientos](
	[IdProveedorSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[IdUsuario] [int] NULL,
	[dtFechaRegistroAnomalia] [int] NULL,
	[szOtraAnomalia] [text] NULL,
	[szAccionTomada] [text] NULL,
	[bAmonestacion] [int] NULL,
	[szObservaciones] [text] NULL,
	[iGradoImportancia] [int] NULL,
	[iGradoControl] [int] NULL,
 CONSTRAINT [PK_ProveedorSeguimientos] PRIMARY KEY CLUSTERED 
(
	[IdProveedorSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
