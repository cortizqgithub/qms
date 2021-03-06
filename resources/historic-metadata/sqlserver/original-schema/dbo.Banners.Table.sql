USE [sqm]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[IdBanner] [int] IDENTITY(1,1) NOT NULL,
	[dtFeIni] [int] NULL,
	[dtFeFin] [int] NULL,
	[bInterno] [int] NULL,
	[szLink] [nvarchar](255) NULL,
	[szImage] [nvarchar](255) NULL,
	[iTipo] [int] NULL,
	[iWidth] [int] NULL,
	[iHeight] [int] NULL,
	[iUbicacion] [int] NULL,
	[iAparicion] [int] NULL
) ON [PRIMARY]

GO
