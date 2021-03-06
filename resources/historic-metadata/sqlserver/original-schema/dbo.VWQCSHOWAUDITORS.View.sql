USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWAUDITORS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWAUDITORS                                            */
/* Description:   View to select info regarding auditors.                     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.28/2004                                                 */
/* Last Modified: Aug.25/2004                                                 */
/* Version:       1.5                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.28/2004 File created.
 Aug.14/2004 Added CalidadEmpresas, CalidadSistema table lookup.
 Aug.25/2004 Added UsrAreaName, szCargo field
------------------------------------------------------------------------------*/
CREATE       VIEW [dbo].[VWQCSHOWAUDITORS]
AS
SELECT A.idUsuarioAuditor, A.idCalidadSistema, A.idCalidadEmpresa,
       B.szNombre, B.szApellido, B.szCargo,
       A.bActivo, A.bAuditorPrincipal,
       B.szNombre + ' ' + B.szApellido UsrName,
       B.szCedula, B.szCedulaExp,
       C.szDescripcion EmpName,
       D.szDescripcion SysName,
       E.szNombre UsrAreaName
FROM CalidadAuditores A                                            INNER JOIN
     Usuarios         B ON A.idUsuarioAuditor = B.idUsuario        INNER JOIN
     CalidadEmpresas  C ON A.idCalidadEmpresa = C.idCalidadEmpresa INNER JOIN
     CalidadSistema   D ON A.idCalidadSistema = D.idCalidadSistema INNER JOIN
     Areas            E ON B.iArea = E.idArea








GO
