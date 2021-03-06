USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTMODIFYTO]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTMODIFYTO                         */
/* Description:   View to get a reference to 'modified to' relationship to    */
/*                legal requirements documents.                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Sep.15/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 NOTES:
 Notice that here you retrieve the information to which iLinkModificadoPor field
 modify to idCalidadRequisitoLegal, thus, idCalidadRequisitoLegal is target and
 iLinkModificadoPor is source for a view perspective about data interpretation.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTMODIFYTO]
AS
SELECT   A.idCalidadRequisitoLegalCambioLinks
       , A.idCalidadRequisitoLegal
       , A.iLinkModificadoPor
       , A.szDescripcion
       , A.dtFechaModificacion
       , A.dtFechaModdificaRegistro
       , A.idUsuario
       , A.bTramitado
       , B.EmpName
       , B.SysName
       , B.LegalDispositionTypeName
       , B.EmpOriginName
       , B.RiskName
       , B.DangerName
       , B.MainRLName
       , B.szEstadoCumplimiento
       , B.MainRLLink
       , C.szNombre + ' ' + C.szApellido ModifyUser
FROM CALIDADREQUISITOLEGALCAMBIOLINKS A INNER JOIN
     VWQCSHOWDOCLEGALREQUIREMENT      B ON A.idCalidadRequisitoLegal = B.idCalidadRequisitoLegal INNER JOIN
     USUARIOS                         C ON A.idUsuario = C.idUsuario


GO
