USE [sqm]
GO
/****** Object:  Table [dbo].[UserAdmins]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmins](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [nvarchar](255) NULL,
	[szEMail] [nvarchar](255) NULL,
	[szUser] [nvarchar](255) NULL,
	[szPassword] [nvarchar](255) NULL,
	[bIsWebMaster] [bit] NOT NULL,
	[szSecciones] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
