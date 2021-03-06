USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoIncidenteContencion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoIncidenteContencion](
	[IdCalidadDocumentoIncidenteContencion] [int] IDENTITY(1,1) NOT NULL,
	[IdCalidadDocumentoIncidente] [int] NOT NULL,
	[szContencion] [text] NOT NULL,
	[dtFecha] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoIncidenteContencion] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoIncidenteContencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDAD]

GO
ALTER TABLE [dbo].[CalidadDocumentoIncidenteContencion]  WITH CHECK ADD  CONSTRAINT [FK_CalidadDocumentoIncidenteContencion_CalidadDocumentoIncidente] FOREIGN KEY([IdCalidadDocumentoIncidente])
REFERENCES [dbo].[CalidadDocumentoIncidente] ([IdCalidadDocumentoIncidente])
GO
ALTER TABLE [dbo].[CalidadDocumentoIncidenteContencion] CHECK CONSTRAINT [FK_CalidadDocumentoIncidenteContencion_CalidadDocumentoIncidente]
GO
