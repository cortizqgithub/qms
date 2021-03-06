USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadRequisitoLegalProcesoReferencia]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadRequisitoLegalProcesoReferencia](
	[idCalidadRequisitoLegal] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
 CONSTRAINT [PK_CalidadRequisitoLegalProcesoReferencia] PRIMARY KEY CLUSTERED 
(
	[idCalidadRequisitoLegal] ASC,
	[idCalidadEmpresa] ASC,
	[szCodigoArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalProcesoReferencia]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalProcesoReferencia_AreasCalidad] FOREIGN KEY([idCalidadEmpresa], [szCodigoArea])
REFERENCES [dbo].[AreasCalidad] ([IdCalidadEmpresa], [szCodigoArea])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalProcesoReferencia] CHECK CONSTRAINT [FK_CalidadRequisitoLegalProcesoReferencia_AreasCalidad]
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalProcesoReferencia]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalProcesoReferencia_CalidadRequisitoLegal] FOREIGN KEY([idCalidadRequisitoLegal])
REFERENCES [dbo].[CalidadRequisitoLegal] ([idCalidadRequisitoLegal])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalProcesoReferencia] CHECK CONSTRAINT [FK_CalidadRequisitoLegalProcesoReferencia_CalidadRequisitoLegal]
GO
