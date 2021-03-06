USE [sqm]
GO
/****** Object:  Table [dbo].[Skin]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skin](
	[idSkin] [int] IDENTITY(1,1) NOT NULL,
	[idSkinType] [int] NOT NULL,
	[szHeaderFName] [varchar](255) NULL,
	[iImgType] [smallint] NULL,
	[dtStart] [int] NOT NULL,
	[dtEnd] [int] NOT NULL,
	[bActive] [smallint] NOT NULL,
	[iPrecedence] [smallint] NOT NULL,
 CONSTRAINT [PK_Skin] PRIMARY KEY CLUSTERED 
(
	[idSkin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
