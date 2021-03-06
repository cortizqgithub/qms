USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoIncidentePostAccion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoIncidentePostAccion](
	[IdCalidadDocumentoIncidentePostAccion] [int] IDENTITY(1,1) NOT NULL,
	[IdCalidadDocumentoIncidente] [int] NOT NULL,
	[szPostAccion] [text] NOT NULL,
	[dtFecha] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoIncidentePostAccion] PRIMARY KEY CLUSTERED 
(
	[IdCalidadDocumentoIncidentePostAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDAD]

GO
ALTER TABLE [dbo].[CalidadDocumentoIncidentePostAccion]  WITH CHECK ADD  CONSTRAINT [FK_CalidadDocumentoIncidentePostAccion_CalidadDocumentoIncidente] FOREIGN KEY([IdCalidadDocumentoIncidente])
REFERENCES [dbo].[CalidadDocumentoIncidente] ([IdCalidadDocumentoIncidente])
GO
ALTER TABLE [dbo].[CalidadDocumentoIncidentePostAccion] CHECK CONSTRAINT [FK_CalidadDocumentoIncidentePostAccion_CalidadDocumentoIncidente]
GO
