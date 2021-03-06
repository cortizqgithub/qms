USE [sqm]
GO
/****** Object:  Table [dbo].[PresentacionDirectorio]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresentacionDirectorio](
	[IdPresentacion] [int] IDENTITY(1,1) NOT NULL,
	[bActivo] [int] NULL,
	[szImage] [nvarchar](255) NULL,
	[szTitulo] [nvarchar](255) NULL,
	[szDescripcion] [ntext] NULL,
	[szImageFoot] [nvarchar](255) NULL,
	[bJustImage] [int] NULL,
	[szLink] [nvarchar](255) NULL,
	[bInterno] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
