USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIFTHEMES]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITNOTIFTHEMES                         */
/* Description:   View to select info regarding internal audit notification   */
/*                info.                                                       */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.03/2004                                                 */
/* Last Modified: May.24/2006                                                 */
/* Version:       1.4                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
  Whenever you need to lookup a value in table CalidadSistema it is assured
  that you can only use the idCalidadSistema (or whichever applies) to
  traverse that table (this is possible as the CalidadSistema PK is an auto
  increment generated value).

  The same rationale applies when looking up a value for CalidadAuditores
  which idUsuarioAuditor maps directly tu idUsuario in table Usuarios, thus
  not needing to use the whole CalidadAuditores PK, that is, instead of using
  CalidadAuditores table you can go directly to Usuarios table and this way
  CalidadAuditores is only a filtering table for Usuarios.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Aug.03/2004 File created.
------------------------------------------------------------------------------*/
CREATE        VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIFTHEMES]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaNotificacionTemas,
       A.idCalidadDocumentoAuditoriaInternaNotificacion,
       A.szTema, A.idAuditado, A.idAuditor, A.idCalidadSistema, A.idCalidadEmpresa, 
       A.dtHoraInicio, A.dtHoraFinal,
       B.szNombre + ' ' + B.szApellido UsrAuditedName,
       C.szNombre + ' ' + C.szApellido UsrAuditorName,
       D.szDescripcion EmpName,
       E.szDescripcion SysName
FROM CalidadDocumentoAuditoriaInternaNotificacionTemas A                                            INNER JOIN
     Usuarios                                          B ON A.idAuditado = B.idUsuario              INNER JOIN
     Usuarios                                          C ON A.idAuditor = C.idUsuario               INNER JOIN
     CalidadEmpresas                                   D ON A.idCalidadEmpresa = D.idCalidadEmpresa INNER JOIN
     CalidadSistema                                    E ON A.idCalidadEmpresa = E.idCalidadEmpresa AND
                                                            A.idCalidadSistema = E.idCalidadSistema



GO
