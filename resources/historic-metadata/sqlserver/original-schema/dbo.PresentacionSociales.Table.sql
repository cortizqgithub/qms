USE [sqm]
GO
/****** Object:  Table [dbo].[PresentacionSociales]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresentacionSociales](
	[IdPresentacion] [int] IDENTITY(1,1) NOT NULL,
	[IdSeccion] [int] NULL,
	[bActivo] [int] NULL,
	[szImage] [nvarchar](255) NULL,
	[szTitulo] [nvarchar](255) NULL,
	[szDescripcion] [ntext] NULL,
	[szImageFoot] [nvarchar](255) NULL,
	[bJustImage] [int] NULL,
	[bInterno] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
