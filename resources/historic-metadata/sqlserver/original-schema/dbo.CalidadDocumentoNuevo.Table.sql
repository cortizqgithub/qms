USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoNuevo]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoNuevo](
	[idCalidadDocumentoNuevo] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [varchar](50) NOT NULL,
	[szDescripcion] [varchar](255) NULL,
	[szLink] [varchar](255) NOT NULL,
	[iCalidadEmpresa] [int] NOT NULL,
	[szCodigoDocumento] [char](4) NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoNuevo] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoNuevo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
