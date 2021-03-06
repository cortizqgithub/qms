USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaNotificacion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaNotificacion](
	[idCalidadDocumentoAuditoriaInternaNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInterna] [int] NOT NULL,
	[dtFechaConcepto] [int] NOT NULL,
	[dtHoraConcepto] [int] NOT NULL,
	[dtFechaRApertura] [int] NOT NULL,
	[dtHoraRApertura] [int] NOT NULL,
	[dtFechaEjecucion] [int] NOT NULL,
	[dtHoraEjecucion] [int] NOT NULL,
	[dtFechaRCierre] [int] NOT NULL,
	[dtHoraRCierre] [int] NOT NULL,
	[idUsuarioResponsable] [int] NOT NULL,
	[dtNotificacion] [int] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
	[bAprobado] [smallint] NOT NULL,
	[idUsuarioNotifica] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaNotificacion] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
