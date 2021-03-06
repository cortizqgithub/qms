USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoRevisionDireccionPlanAccion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoRevisionDireccionPlanAccion](
	[idCalidadDocumentoRevisionDireccionPlanAccion] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[szTipoAccionCalidadPlan] [char](1) NOT NULL,
	[idCalidadDocumentoMejoraContinua] [int] NULL,
	[szNomenclaturaMejoraContinua] [varchar](50) NULL,
	[szNomenclatura] [varchar](50) NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[idUsuarioResponsable] [int] NOT NULL,
	[dtInicio] [int] NOT NULL,
	[dtFin] [int] NOT NULL,
	[idUsuarioSolicita] [int] NOT NULL,
	[dtSolicitud] [int] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[bAprobado] [smallint] NOT NULL,
	[szAccion] [text] NOT NULL,
	[dtPlazoGeneral] [int] NOT NULL,
	[szConsideraciones] [text] NOT NULL,
	[iSecuencia] [int] NULL,
	[iYear] [smallint] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
 CONSTRAINT [PK_CalidadDocumentoRevisionDireccionPlanAccion] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoRevisionDireccionPlanAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoRevisionDireccionPlanAccion_NomenclaturaMejoraContinua]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoRevisionDireccionPlanAccion_NomenclaturaMejoraContinua] ON [dbo].[CalidadDocumentoRevisionDireccionPlanAccion]
(
	[szNomenclaturaMejoraContinua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
