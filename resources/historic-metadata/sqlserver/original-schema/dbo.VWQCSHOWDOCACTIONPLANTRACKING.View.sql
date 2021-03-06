USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCACTIONPLANTRACKING]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCACTIONPLANTRACKING                               */
/* Description:   Show info about qc Action plan tracking docs.               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.07/2004                                                 */
/* Last Modified: Sep.09/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.07/2004 File created.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCACTIONPLANTRACKING]
AS
SELECT A.idCalidadDocumentoRevisionDireccionPlanAccionSeguimiento,
       A.idCalidadDocumentoRevisionDireccionPlanAccion,
       A.szNomenclatura, A.dtInicio, A.dtFin, A.idUsuarioSolicita,
       A.dtSolicitud, A.iStatus, A.iSecuencia TrackingSeq,
       B.idCalidadEmpresa, B.idCalidadSistema, B.szTipoAccionCalidadPlan, B.IdCalidadDocumentoMejoraContinua,
       B.szNomenclatura PlanNomenclature,
       B.szNomenclaturaMejoraContinua, B.szCodigoArea, B.idUsuarioResponsable,
       B.szAccion, B.dtPlazoGeneral, B.szConsideraciones, B.iSecuencia PlanSeq,
       B.iYear, B.EmpName, B.SysName, B.ActionTypeName,
       B.ImprvDocNomenclature, B.UsrResponsible, AreaName,
       C.szNombre + ' ' + C.szApellido TrackingUsrRequester
FROM CalidadDocumentoRevisionDireccionPlanAccionSeguimiento A INNER JOIN
     VWQCSHOWDOCACTIONPLAN                                  B ON A.idCalidadDocumentoRevisionDireccionPlanAccion = B.idCalidadDocumentoRevisionDireccionPlanAccion INNER JOIN
     Usuarios                                               C ON A.idUsuarioSolicita = C.idUsuario





GO
