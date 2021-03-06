USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadRequisitoLegalCambioLinks]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadRequisitoLegalCambioLinks](
	[idCalidadRequisitoLegalCambioLinks] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadRequisitoLegal] [int] NOT NULL,
	[iLinkModificadoPor] [int] NOT NULL,
	[szDescripcion] [varchar](4000) NOT NULL,
	[dtFechaModificacion] [int] NOT NULL,
	[dtFechaModdificaRegistro] [int] NULL,
	[idUsuario] [int] NOT NULL,
	[bTramitado] [int] NOT NULL,
 CONSTRAINT [PK_CalidadRequisitoLegalCambioLinks] PRIMARY KEY CLUSTERED 
(
	[idCalidadRequisitoLegalCambioLinks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalCambioLinks]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalCambioLinks_CalidadRequisitoLegal] FOREIGN KEY([idCalidadRequisitoLegal])
REFERENCES [dbo].[CalidadRequisitoLegal] ([idCalidadRequisitoLegal])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalCambioLinks] CHECK CONSTRAINT [FK_CalidadRequisitoLegalCambioLinks_CalidadRequisitoLegal]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalCambioLinks]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalCambioLinks_CalidadRequisitoLegalLNKModBy] FOREIGN KEY([iLinkModificadoPor])
REFERENCES [dbo].[CalidadRequisitoLegal] ([idCalidadRequisitoLegal])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalCambioLinks] CHECK CONSTRAINT [FK_CalidadRequisitoLegalCambioLinks_CalidadRequisitoLegalLNKModBy]
GO
