USE [sqm]
GO
/****** Object:  Table [dbo].[Responsables]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Responsables](
	[consecutivo] [int] IDENTITY(1,1) NOT NULL,
	[iUsuario] [int] NOT NULL,
	[iArea] [int] NOT NULL,
	[responsable_escala] [bit] NOT NULL,
	[responsable_iusuario_escala] [int] NOT NULL,
	[responsable_email] [varchar](100) NOT NULL,
	[usuario] [varchar](8000) NOT NULL,
 CONSTRAINT [PK_Responsables] PRIMARY KEY CLUSTERED 
(
	[iUsuario] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [iArea]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [iArea] ON [dbo].[Responsables]
(
	[iArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
/****** Object:  Index [responsable_escala]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [responsable_escala] ON [dbo].[Responsables]
(
	[responsable_escala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
/****** Object:  Index [responsable_iusuario_escala]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [responsable_iusuario_escala] ON [dbo].[Responsables]
(
	[responsable_iusuario_escala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF__Responsab__iUsua__41EDCAC5]  DEFAULT (0) FOR [iUsuario]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF__Responsab__IdAre__42E1EEFE]  DEFAULT (0) FOR [iArea]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF__Responsab__respo__43D61337]  DEFAULT (0) FOR [responsable_escala]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF__Responsab__respo__44CA3770]  DEFAULT (1) FOR [responsable_iusuario_escala]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF__Responsab__respo__45BE5BA9]  DEFAULT ('jriveraa@camaramed.org.co') FOR [responsable_email]
GO
ALTER TABLE [dbo].[Responsables] ADD  CONSTRAINT [DF_Responsables_usuario]  DEFAULT ('') FOR [usuario]
GO
