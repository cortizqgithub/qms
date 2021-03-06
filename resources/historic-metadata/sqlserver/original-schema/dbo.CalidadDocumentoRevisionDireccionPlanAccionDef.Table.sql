USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionPlanAccionDef]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionPlanAccionDef](
	[idCalidadDocumentoRevisionDireccionPlanAccionDef] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoRevisionDireccionPlanAccion] [int] NOT NULL,
	[szActividades] [text] NULL,
	[szJustificacion] [text] NULL,
	[szProcedimiento] [text] NULL,
	[idResponsable] [int] NOT NULL,
	[dtPlazo] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionPlanAccionDef] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionPlanAccionDef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
