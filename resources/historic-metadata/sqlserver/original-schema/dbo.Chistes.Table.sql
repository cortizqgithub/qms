USE [sqm]
GO
/****** Object:  Table [dbo].[Chistes]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chistes](
	[idChiste] [int] IDENTITY(1,1) NOT NULL,
	[szTitulo] [varchar](100) NOT NULL,
	[szChiste] [text] NULL,
	[szImgChiste] [varchar](255) NULL,
	[iPlantilla] [int] NULL,
	[dtFechaIni] [int] NULL,
	[dtFechaFin] [int] NULL,
	[bAprobado] [smallint] NULL,
 CONSTRAINT [PK_Chistes] PRIMARY KEY CLUSTERED 
(
	[idChiste] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
