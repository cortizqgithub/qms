USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDIT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDIT                                    */
/* Description:   View to select info regarding internal audit info.          */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.29/2004                                                 */
/* Last Modified: May.22/2006                                                 */
/* Version:       1.6                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  Whenever you need to lookup a value in table CalidadSistema it is assured
  that you can only use the idCalidadSistema (or whichever applies) to
  traverse that table (this is possible as the CalidadSistema PK is an auto
  increment generated value).  CAO: May.19/2006, the latter note is not
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
 May.19/2006 Field idCalidadSistema dropped from view
------------------------------------------------------------------------------*/
CREATE            VIEW [dbo].[VWQCSHOWDOCINTERNALAUDIT]
AS
SELECT A.idCalidadDocumentoAuditoriaInterna, A.idCalidadDocumentoAuditoriaInternaPrograma,
       A.idCalidadSistema, A.idCalidadEmpresa, A.szCodigoArea, A.iNumNC, A.szNumerales,
       A.iSeq, A.szNomenclatura, A.szInfoProceso, A.idAuditorPrincipal,
       A.iStatus, A.dtUltimaActualizacion, A.bEjecucion, A.dtAuditoria,
       B.idTipoAuditoriaCalidad, B.iYear, B.iCiclo, B.dtFI, B.dtFF,
       B.szObjeto, B.szAlcance, B.szCriterios, B.szRecursos, B.iNumPrograma,
       C.szDescripcion EmpName,
       E.szDescripcion AreaName,
       F.szDescripcion AuditTypeName,
       H.szNombre + ' ' + H.szApellido MainAuditorName
FROM CalidadDocumentoAuditoriaInterna         A                                                                                                INNER JOIN
     CalidadDocumentoAuditoriaInternaPrograma B ON A.idCalidadDocumentoAuditoriaInternaPrograma = B.idCalidadDocumentoAuditoriaInternaPrograma INNER JOIN
     CalidadEmpresas                          C ON B.idCalidadEmpresa = C.idCalidadEmpresa                                                     INNER JOIN
     AreasCalidad                             E ON A.idCalidadEmpresa = E.idCalidadEmpresa AND
                                                   A.szCodigoArea = E.szCodigoArea                                                             INNER JOIN
     TipoAuditoriaCalidad                     F ON B.idTipoAuditoriaCalidad = F.idTipoAuditoriaCalidad                                         INNER JOIN
     CalidadAuditores                         G ON A.idAuditorPrincipal = G.idUsuarioAuditor AND
                                                   A.idCalidadEmpresa = G.idCalidadEmpresa AND
                                                   A.idCalidadSistema = G.idCalidadSistema                                                     INNER JOIN
     Usuarios                                 H ON G.idUsuarioAuditor = H.idUsuario

GO
