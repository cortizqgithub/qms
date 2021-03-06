USE [sqm]
GO
/****** Object:  View [dbo].[VWEMAILCCLIST]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
/*----------------------------------------------------------------------------*/
/* Source File:   VWEMAILCCLIST                                               */
/* Description:   Retrieves a list of CC email users for module               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Sep.15/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWEMAILCCLIST]
AS
SELECT A.idEMailCCList, A.idModulo, A.idUsuario,
       B.szNombre, B.szApellido, B.szEMail, C.szDescripcion
FROM EmailCCList A                              INNER JOIN 
     Usuarios    B ON A.idUsuario = B.idUsuario INNER JOIN 
     Modulo      C ON A.idModulo = C.idModulo
WHERE B.bActivo = 1

GO
