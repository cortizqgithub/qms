USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorEvaluadores]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorEvaluadores](
	[IdUsuario] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[bRealizada] [int] NULL,
 CONSTRAINT [PK_ProveedorEvaluadores] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
