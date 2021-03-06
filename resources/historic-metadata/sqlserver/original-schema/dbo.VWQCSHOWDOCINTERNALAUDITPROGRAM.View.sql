USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITPROGRAM]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITPROGRAM                             */
/* Description:   View to select info regarding internal audit info.          */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.29/2004                                                 */
/* Last Modified: May.23/2013                                                 */
/* Version:       1.5                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*                2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  Whenever you need to lookup a value in table CalidadSistema it is assured
  that you can only use the idCalidadSistema (or whichever applies) to
  traverse that table (this is possible as the CalidadSistema PK is an auto
  increment generated value). CAO: May.19/2006, the latter note is not
  longer feasible as this field not longer exist in this view.

  The following note only applies whenever necessary.
  The same rationale applies when looking up a value for CalidadAuditores
  which idUsuarioAuditor maps directly tu idUsuario in table Usuarios, thus
  not needing to use the whole CalidadAuditores PK, that is, instead of using
  CalidadAuditores table you can go directly to Usuarios table and this way
  CalidadAuditores is only a filtering table for Usuarios.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jul.29/2004 File created.
 May.19/2006 Field idCalidadSistema dropped from view.
 May.23/2013 Field szEvalPrograma added.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITPROGRAM]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaPrograma,
       A.iNumPrograma,
       A.idCalidadEmpresa,
       A.idTipoAuditoriaCalidad,
       C.szDescripcion EmpName,
       D.szDescripcion AuditTypeName,
       A.iYear,
       A.iCiclo,
       A.dtFI,
       A.dtFF,
       A.szObjeto,
       A.szAlcance,
       A.szCriterios,
       A.szRecursos,
       A.szEvalPrograma
FROM CalidadDocumentoAuditoriaInternaPrograma A                                                        INNER JOIN
     CalidadEmpresas                          C ON A.idCalidadEmpresa = C.idCalidadEmpresa             INNER JOIN
     TipoAuditoriaCalidad                     D ON A.idTipoAuditoriaCalidad = D.idTipoAuditoriaCalidad



GO
