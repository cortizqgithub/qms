USE [sqm]
GO
/****** Object:  Table [dbo].[EncuestaOpcionesHistorico]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EncuestaOpcionesHistorico](
	[idEncuestaOpcion] [int] NOT NULL,
	[idEncuesta] [int] NULL,
	[szOpcion] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
