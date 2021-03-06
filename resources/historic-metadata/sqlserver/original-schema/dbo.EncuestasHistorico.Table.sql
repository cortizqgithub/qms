USE [sqm]
GO
/****** Object:  Table [dbo].[EncuestasHistorico]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EncuestasHistorico](
	[idEncuesta] [int] NOT NULL,
	[idArea] [int] NULL,
	[szPregunta] [varchar](2000) NULL,
	[iActiva] [int] NULL,
	[iPopUp] [int] NULL,
	[dtFechaIni] [int] NULL,
	[dtFechaFin] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
