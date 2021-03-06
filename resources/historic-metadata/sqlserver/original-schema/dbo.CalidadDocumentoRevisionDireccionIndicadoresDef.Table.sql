USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionIndicadoresDef]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionIndicadoresDef](
	[idCalidadDocumentoRevisionDireccionIndicadoresDef] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoRevisionDireccionIndicadores] [int] NOT NULL,
	[szDefFormula] [text] NOT NULL,
	[szImportancia] [text] NOT NULL,
	[szProcedimiento] [text] NOT NULL,
	[idUsuarioMide] [int] NOT NULL,
	[idCalidadFrecuencia] [int] NOT NULL,
	[szMeta] [text] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionIndicadoresDef] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionIndicadoresDef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
