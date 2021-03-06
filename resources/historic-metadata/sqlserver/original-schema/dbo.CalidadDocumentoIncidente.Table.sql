USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoIncidente]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoIncidente](
	[IdCalidadDocumentoIncidente] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioSolicita] [int] NOT NULL,
	[IdUsuarioAprueba] [int] NULL,
	[idUsuarioVerifica] [int] NULL,
	[idUsuarioInvestiga] [int] NULL,
	[idUsuarioCierra] [int] NULL,
	[dtFechaSolicitud] [int] NOT NULL,
	[dtFechaAprobacion] [int] NULL,
	[dtFechaVerificacion] [int] NULL,
	[dtFechaIdentificacion] [int] NOT NULL,
	[dtFechaCierre] [int] NULL,
	[dtFechaInvestigacion] [int] NULL,
	[dtUltimaModificacion] [int] NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idCalidadSistema] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[iSecuencia] [int] NOT NULL,
	[szNomenclatura] [varchar](50) NOT NULL,
	[szDescripcion] [text] NOT NULL,
	[iStatus] [smallint] NULL,
	[iEstadoDoc] [smallint] NULL,
	[bAprobado] [smallint] NULL,
	[idCalidadIncidenteTema] [int] NULL,
	[idCalidadIncidenteRiesgo] [int] NULL,
	[idCalidadIncidenteVulnerabilidad] [int] NULL,
	[idCalidadIncidenteActivos] [int] NULL,
	[idCalidadIncidenteImpacto] [int] NULL,
	[szEvidencias] [text] NULL,
	[szCausas] [text] NULL,
	[IdCalidadDocumentoMejoraContinua] [int] NULL,
	[szResultadoEvidenciaCierre] [varchar](4000) NULL,
 CONSTRAINT [PK_CalidadDocumentoIncidente] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoIncidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
