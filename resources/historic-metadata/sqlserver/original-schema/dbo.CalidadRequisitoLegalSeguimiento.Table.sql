USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadRequisitoLegalSeguimiento]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadRequisitoLegalSeguimiento](
	[idCalidadRequisitoLegalSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadRequisitoLegal] [int] NOT NULL,
	[szDescripcion] [varchar](4000) NOT NULL,
	[dtFecha] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[iStatusTracking] [smallint] NULL,
 CONSTRAINT [PK_CalidadRequisitoLegalSeguimiento] PRIMARY KEY CLUSTERED 
(
	[idCalidadRequisitoLegalSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [GCALIDAD]
) ON [GCALIDAD]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalSeguimiento]  WITH CHECK ADD  CONSTRAINT [FK_CalidadRequisitoLegalSeguimiento_RequisitoLegal] FOREIGN KEY([idCalidadRequisitoLegal])
REFERENCES [dbo].[CalidadRequisitoLegal] ([idCalidadRequisitoLegal])
GO
ALTER TABLE [dbo].[CalidadRequisitoLegalSeguimiento] CHECK CONSTRAINT [FK_CalidadRequisitoLegalSeguimiento_RequisitoLegal]
GO
