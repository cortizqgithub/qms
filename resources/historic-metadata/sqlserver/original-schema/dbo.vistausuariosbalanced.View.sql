USE [sqm]
GO
/****** Object:  View [dbo].[vistausuariosbalanced]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistausuariosbalanced]
AS
SELECT     szNombre, szApellido, szCedula, szEmail
FROM         dbo.Usuarios

GO
