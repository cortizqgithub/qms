USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCIMPROVEMENTFULL]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCIMPROVEMENTFULL                                  */
/* Description:   Show info about qc improvement docs.                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.06/2004                                                 */
/* Last Modified: Jun.06/2013                                                 */
/* Version:       1.7                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*                2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.06/2004 File created.
 Nov.04/2004 Modified.
 Feb.05/2006 Included A.bAprobado field
 Jun.01/2013 New field idCalidadTema, ThemeName added.
 Jun.06/2013 New field szEvalEficacia
------------------------------------------------------------------------------*/
CREATE    VIEW [dbo].[VWQCSHOWDOCIMPROVEMENTFULL]
AS
SELECT A.IdCalidadDocumentoMejoraContinua, A.szTipoAccionCalidad, A.szCodigoArea, A.iSecuencia,
       A.szNomenclatura, A.IdUsuarioSolicita, A.IdUsuarioAprueba, A.IdUsuarioVerifica,
       A.IdUsuarioCierre, A.dtFechaSolicitud, A.dtFechaAprueba, A.dtFechaVerifica,
       A.dtFechaCierre, A.dtFechaIdentificacion, A.idCalidadEmpresa, A.idCalidadDocumentoAuditoriaInternaInformeFinalNC,
       A.idCalidadSistema, A.idTipoAreaDetectoraCalidad, A.szNroAuditoria, A.szDescNoConformidad,
       A.idCalidadNumerales, A.szCausas, A.bViable, A.szViabilidad,
       A.szCierre, A.iStatus, A.iEstadoDoc, A.bAprobado, A.AreaName,
       A.szCodigoArea + '-' + A.AreaName AName, A.EmpName, A.SysName,
       A.ActionTypeName, A.UsrNameRequest, A.UsrNameApprove, A.UsrNameVerify,
       A.idImpacto, A.ImpactName, A.bAvance, A.bEficacia,
       A.UsrNameClosure, A.szNuevaAccion, A.idNuevaAccion,
       A.idCalidadTema, A.ThemeName, A.szEvalEficacia,
       B.szDescripcion DetectingAreaName,
       C.szNumeral, C.szDescripcion NumeralName,
       D.szDescripcion GroupName, D.idCalidadGrupo
FROM VWQCSHOWDOCIMPROVEMENT   A                                                                INNER JOIN
     TipoAreaDetectoraCalidad B ON A.idTipoareaDetectoraCalidad = B.idTipoareaDetectoraCalidad INNER JOIN
     CalidadNumerales         C ON A.idCalidadSistema = C.idCalidadSistema AND
                                   A.idCalidadNumerales = C.idCalidadNumerales                 LEFT JOIN
     CalidadGrupos            D ON C.idCalidadGrupo = D.idCalidadGrupo



GO
