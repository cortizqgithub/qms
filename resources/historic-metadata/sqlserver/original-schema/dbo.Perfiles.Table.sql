USE [sqm]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [nvarchar](50) NULL,
	[szLetter] [nvarchar](1) NULL,
	[iConstante] [int] NULL
) ON [PRIMARY]

GO
