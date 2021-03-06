USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIF]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITNOTIF                               */
/* Description:   View to select info regarding internal audit notification   */
/*                info.                                                       */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.03/2004                                                 */
/* Last Modified: May.24/2006                                                 */
/* Version:       1.8                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
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
 Aug.03/2004 File created.
 May.19/2006 Field idCalidadSistema dropped from view.
 May.24/2006 Field idCalidadSistema restored to view, this field is taken
             from view VWQCSHOWDOCINTERNALAUDIT as it belongs to main auditor.
------------------------------------------------------------------------------*/
CREATE                VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIF]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaNotificacion,
       A.idCalidadDocumentoAuditoriaInterna,
       A.dtFechaConcepto, A.dtHoraConcepto, A.dtFechaRApertura, A.dtHoraRApertura,
       A.dtFechaEjecucion, A.dtHoraEjecucion, A.dtFechaRCierre, A.dtHoraRCierre,
       A.idUsuarioResponsable, B.dtAuditoria, B.bEjecucion,
       A.dtNotificacion, A.dtUltimaActualizacion NotifLastUpdate, A.bAprobado NotifApproved,
       A.idUsuarioNotifica, B.iNumNC, B.iNumPrograma, B.szNumerales AINumerals,
       B.idCalidadEmpresa, B.idCalidadSistema, B.idTipoAuditoriaCalidad, B.iYear,
       B.iCiclo, B.szCodigoArea, B.iSeq, B.szNomenclatura,
       B.dtFI, B.dtFF, B.szObjeto AIObject, B.szAlcance AIReach,
       B.szCriterios, B.szRecursos, B.szInfoProceso ProcessInfo, B.idAuditorPrincipal,       
       B.iStatus, B.dtUltimaActualizacion AILastUpdate,
       B.EmpName, B.AreaName, B.AuditTypeName, B.MainAuditorName,
       C.szNombre + ' ' + C.szApellido UsrResponsibleName,
       D.szNombre + ' ' + D.szApellido UsrNotifyName
FROM CalidadDocumentoAuditoriaInternaNotificacion A                                                                                 INNER JOIN
     VWQCSHOWDOCINTERNALAUDIT                     B ON A.idCalidadDocumentoAuditoriaInterna = B.idCalidadDocumentoAuditoriaInterna  INNER JOIN
     Usuarios                                     C ON A.idUsuarioResponsable = C.idUsuario                                         INNER JOIN
     Usuarios                                     D ON A.idUsuarioNotifica = D.idUsuario

GO
