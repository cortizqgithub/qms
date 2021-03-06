USE [sqm]
GO
/****** Object:  Table [dbo].[EmailCCList]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailCCList](
	[idEMailCCList] [int] IDENTITY(1,1) NOT NULL,
	[idModulo] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_EmailCCList] PRIMARY KEY CLUSTERED 
(
	[idEMailCCList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[EmailCCList]  WITH CHECK ADD  CONSTRAINT [FK_EmailCCList_Modulo] FOREIGN KEY([idModulo])
REFERENCES [dbo].[Modulo] ([idModulo])
GO
ALTER TABLE [dbo].[EmailCCList] CHECK CONSTRAINT [FK_EmailCCList_Modulo]
GO
