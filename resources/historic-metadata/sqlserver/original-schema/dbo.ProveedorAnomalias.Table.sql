USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorAnomalias]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorAnomalias](
	[IdProveedorAnomalia] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedorSeguimiento] [int] NULL,
	[IdTipoAnomaliaDetalle] [int] NULL,
 CONSTRAINT [PK_ProveedorAnomalias] PRIMARY KEY CLUSTERED 
(
	[IdProveedorAnomalia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
