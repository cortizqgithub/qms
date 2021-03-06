USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCMGRREVISION]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCMGRREVISION                                      */
/* Description:   Show info about qc Action plan docs.                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.14/2004                                                 */
/* Last Modified: Feb.15/2006                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004-2006 Cinemática Producciones Ltda.                     */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.03/2004 File created.
------------------------------------------------------------------------------*/
CREATE     VIEW [dbo].[VWQCSHOWDOCMGRREVISION]
AS
SELECT A.idCalidadDocumentoRevisionDireccion,
       A.idCalidadEmpresa, A.iYear, A.szCodigoArea, A.dtInicio, A.dtFin,
       A.szNomenclatura, A.idUsuarioResponsable, A.idUsuarioSolicita,
       A.dtSolicitud, A.iStatus, A.bAprobado, A.iSecuencia,
       A.szRevision, A.szSeguimientoPlanTrabajo,
       A.idCalidadDocumentoRevisionDireccionPlanAccion,
       A.szResultadoIndicadorGestion, A.idCalidadDocumentoRevisionDireccionIndicadores,
       A.szSeguridad, A.szResultadoAuditoriaInterna, A.idCalidadDocumentoAuditoriaInternaInformeFinal,
       A.szAccionesCorrectivas, A.szAccionesPreventivas, A.szAccionesMejoramiento, A.szCambios,
       A.szConformidadProducto, A.szQuejas, A.szAuditoriasServicio, A.dtUltimaActualizacion,
       B.szDescripcion AreaName,
       C.szDescripcion EmpName,
       D.szNombre + ' ' + D.szApellido UsrResponsibleName,
       E.szNombre + ' ' + E.szApellido UsrRequesterName,
       F.szNomenclatura ActionPlanNomenclature,
       G.szNomenclatura MgrIndicatorNomenclature,
       H.szNomenclatura AIFinalRptNomenclature
FROM CalidadDocumentoRevisionDireccion            A                                                                                                        INNER JOIN
     AreasCalidad                                 B ON A.idCalidadEmpresa = B.idCalidadEmpresa AND
                                                       A.szCodigoArea = B.szCodigoArea                                                                     INNER JOIN
     CalidadEmpresas                              C ON A.idCalidadEmpresa = C.idCalidadEmpresa                                                             INNER JOIN
     Usuarios                                     D ON A.idUsuarioResponsable = D.idUsuario                                                                INNER JOIN
     Usuarios                                     E ON A.idUsuarioSolicita = E.idUsuario                                                                   LEFT  JOIN
     CalidadDocumentoRevisionDireccionPlanAccion  F ON A.idCalidadDocumentoRevisionDireccionPlanAccion = F.idCalidadDocumentoRevisionDireccionPlanAccion   LEFT  JOIN
     CalidadDocumentoRevisionDireccionIndicadores G ON A.idCalidadDocumentoRevisionDireccionIndicadores = G.idCalidadDocumentoRevisionDireccionIndicadores LEFT JOIN
     VWQCSHOWDOCINTERNALAUDITFINALREPORT          H ON A.idCalidadDocumentoAuditoriaInternaInformeFinal = H.idCalidadDocumentoAuditoriaInternaInformeFinal


GO
