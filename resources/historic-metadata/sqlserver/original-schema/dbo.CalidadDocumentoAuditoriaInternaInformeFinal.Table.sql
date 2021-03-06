USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaInformeFinal]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaInformeFinal](
	[idCalidadDocumentoAuditoriaInternaInformeFinal] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaNotificacion] [int] NOT NULL,
	[szAspectosRelevantes] [text] NOT NULL,
	[szAspectosMejorar] [text] NOT NULL,
	[dtInformeFinal] [int] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
	[bAprobado] [smallint] NULL,
	[idUsuarioGenera] [int] NOT NULL,
	[iNumNCPendientes] [int] NOT NULL,
	[szConclusiones] [text] NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaInformeFinal] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaInformeFinal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
