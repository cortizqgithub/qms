USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccion](
	[idCalidadDocumentoRevisionDireccion] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[iYear] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[dtInicio] [int] NOT NULL,
	[dtFin] [int] NOT NULL,
	[szNomenclatura] [varchar](50) NULL,
	[idUsuarioResponsable] [int] NOT NULL,
	[idUsuarioSolicita] [int] NOT NULL,
	[dtSolicitud] [int] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[bAprobado] [smallint] NOT NULL,
	[iSecuencia] [int] NULL,
	[szRevision] [text] NOT NULL,
	[szSeguimientoPlanTrabajo] [text] NOT NULL,
	[idCalidadDocumentoRevisionDireccionPlanAccion] [int] NOT NULL,
	[szResultadoIndicadorGestion] [text] NOT NULL,
	[idCalidadDocumentoRevisionDireccionIndicadores] [int] NOT NULL,
	[szSeguridad] [text] NOT NULL,
	[szResultadoAuditoriaInterna] [text] NOT NULL,
	[idCalidadDocumentoAuditoriaInternaInformeFinal] [int] NOT NULL,
	[szAccionesCorrectivas] [text] NOT NULL,
	[szAccionesPreventivas] [text] NOT NULL,
	[szAccionesMejoramiento] [text] NOT NULL,
	[szCambios] [text] NOT NULL,
	[szConformidadProducto] [text] NOT NULL,
	[szQuejas] [text] NOT NULL,
	[szAuditoriasServicio] [text] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccion] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoRevisionDireccion_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoRevisionDireccion_Nomenclatura] ON [dbo].[CalidadDocumentoRevisionDireccion]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
