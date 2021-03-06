USE [sqm]
GO
/****** Object:  Table [dbo].[DesdeRegiones]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesdeRegiones](
	[idDesdeRegion] [int] IDENTITY(1,1) NOT NULL,
	[idRegion] [int] NULL,
	[szTitulo] [varchar](500) NULL,
	[szImgDestacado] [varchar](500) NULL,
	[szDestacado] [varchar](500) NULL,
	[szImgNoticia] [varchar](500) NULL,
	[szNoticia] [varchar](5000) NULL,
	[iPlantilla] [int] NULL,
	[dtFecha] [int] NULL,
	[dtFechaPub] [int] NULL,
	[iAprobado] [int] NULL,
 CONSTRAINT [PK_DesdeRegiones] PRIMARY KEY CLUSTERED 
(
	[idDesdeRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
