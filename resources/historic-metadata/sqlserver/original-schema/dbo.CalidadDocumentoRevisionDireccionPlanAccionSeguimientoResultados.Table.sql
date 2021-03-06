USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionPlanAccionSeguimientoResultados]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionPlanAccionSeguimientoResultados](
	[idCalidadDocumentoRevisionDireccionPlanAccionSeguimientoResultados] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoRevisionDireccionPlanAccionSeguimiento] [int] NOT NULL,
	[szResultadosObtenidos] [text] NOT NULL,
	[szPuntosProblematicos] [text] NOT NULL,
	[szPropuestasMejora] [text] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionPlanAccionSeguimientoResultados] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionPlanAccionSeguimientoResultados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
