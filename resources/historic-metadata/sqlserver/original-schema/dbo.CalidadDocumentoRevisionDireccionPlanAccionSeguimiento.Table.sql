USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionPlanAccionSeguimiento]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionPlanAccionSeguimiento](
	[idCalidadDocumentoRevisionDireccionPlanAccionSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoRevisionDireccionPlanAccion] [int] NOT NULL,
	[szNomenclatura] [varchar](50) NULL,
	[dtInicio] [int] NOT NULL,
	[dtFin] [int] NOT NULL,
	[idUsuarioSolicita] [int] NOT NULL,
	[dtSolicitud] [int] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[bAprobado] [smallint] NOT NULL,
	[iSecuencia] [int] NULL,
	[dtUltimaActualizacion] [int] NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionPlanAccionSeguimiento] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionPlanAccionSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoRevisionDireccionPlanAccionSeguimiento_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoRevisionDireccionPlanAccionSeguimiento_Nomenclatura] ON [dbo].[CalidadDocumentoRevisionDireccionPlanAccionSeguimiento]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
