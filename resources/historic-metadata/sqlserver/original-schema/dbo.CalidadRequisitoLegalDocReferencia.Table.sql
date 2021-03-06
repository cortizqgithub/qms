USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadRequisitoLegalDocReferencia]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadRequisitoLegalDocReferencia](
	[idCalidadRequisitoLegal] [int] NOT NULL,
	[idCalidadDocumento] [int] NOT NULL,
 CONSTRAINT [PK_CalidadRequisitoLegalDocReferencia] PRIMARY KEY CLUSTERED 
(
	[idCalidadRequisitoLegal] ASC,
	[idCalidadDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
ALTER TABLE [dbo].[CalidadRequisitoLegalDocReferencia]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalDocReferencia_CalidadDocumentos] FOREIGN KEY([idCalidadDocumento])
REFERENCES [dbo].[CalidadDocumentos] ([idCalidadDocumentos])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalDocReferencia] CHECK CONSTRAINT [FK_CalidadRequisitoLegalDocReferencia_CalidadDocumentos]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalDocReferencia]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalDocReferencia_CalidadRequisitoLegal] FOREIGN KEY([idCalidadRequisitoLegal])
REFERENCES [dbo].[CalidadRequisitoLegal] ([idCalidadRequisitoLegal])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalDocReferencia] CHECK CONSTRAINT [FK_CalidadRequisitoLegalDocReferencia_CalidadRequisitoLegal]
GO
