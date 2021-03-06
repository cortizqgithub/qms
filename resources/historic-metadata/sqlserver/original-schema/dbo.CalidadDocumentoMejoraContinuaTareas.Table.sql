USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoMejoraContinuaTareas]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalidadDocumentoMejoraContinuaTareas](
	[idCalidadDocumentoMejoraContinuaTareas] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoMejoraContinua] [int] NOT NULL,
	[szTarea] [text] NOT NULL,
	[dtFecha] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoMejoraContinuaTareas] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoMejoraContinuaTareas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
