USE [sqm]
GO
/****** Object:  Table [dbo].[AreasCalidad]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreasCalidad](
	[IdCalidadEmpresa] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[szDescripcion] [varchar](50) NOT NULL,
	[iProceso] [smallint] NOT NULL,
 CONSTRAINT [PK_AreasCalidad] PRIMARY KEY CLUSTERED 
(
	[IdCalidadEmpresa] ASC,
	[szCodigoArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
