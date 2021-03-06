USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITGROUPS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWAUDITORGROUPS                                       */
/* Description:   View to select info regarding auditors.                     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.29/2004                                                 */
/* Last Modified: May.22/2006                                                 */
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
 Jul.29/2004 File created.
 May.22/2006 Added some fields required and they were missing from initial
             implementation.
------------------------------------------------------------------------------*/
CREATE     VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITGROUPS]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaGrupoAuditores,
       A.idCalidadDocumentoAuditoriaInterna, A.idUsuarioAuditor,
       A.idCalidadSistema, A.idCalidadEmpresa,
       B.szNombre + ' ' + B.szApellido UsrName
FROM CalidadDocumentoAuditoriaInternaGrupoAuditores A INNER JOIN
     Usuarios                                       B ON A.idUsuarioAuditor = B.idUsuario


GO
