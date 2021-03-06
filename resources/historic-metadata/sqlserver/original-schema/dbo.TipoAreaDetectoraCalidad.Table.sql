USE [sqm]
GO
/****** Object:  Table [dbo].[TipoAreaDetectoraCalidad]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAreaDetectoraCalidad](
	[idTipoAreaDetectoraCalidad] [int] IDENTITY(1,1) NOT NULL,
	[szDescripcion] [varchar](100) NOT NULL,
	[szTipoAccionCalidad] [char](2) NOT NULL,
	[bEditNumAudit] [smallint] NOT NULL,
 CONSTRAINT [PK_TipoAreaDetectoraCalidad] PRIMARY KEY CLUSTERED 
(
	[idTipoAreaDetectoraCalidad] ASC,
	[szTipoAccionCalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
