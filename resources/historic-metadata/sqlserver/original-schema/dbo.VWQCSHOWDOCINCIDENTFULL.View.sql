USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINCIDENTFULL]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINCIDENTFULL                                     */
/* Description:   Show info about qc incident docs.                           */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.25/2013                                                 */
/* Last Modified: Nov.23/2013                                                 */
/* Version:       1.5                                                         */
/* Copyright (c), 2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.25/2013 File created.
------------------------------------------------------------------------------*/
create view [dbo].[VWQCSHOWDOCINCIDENTFULL]
as
select A.idCalidadDocumentoIncidente, 
       A.idUsuarioSolicita, B.szNombre + ' ' + B.szApellido UsrNameRequest, 
       A.idUsuarioAprueba,  F.szNombre + ' ' + F.szApellido UsrNameApprove,
       A.idUsuarioVerifica, G.szNombre + ' ' + G.szApellido UsrNameVerify,
       A.idUsuarioInvestiga, M.szNombre + ' ' + M.szApellido UsrNameResearch,
       A.idUsuarioCierra, N.szNombre + ' ' + N.szApellido UsrNameClose,
       A.dtFechaSolicitud, A.dtFechaAprobacion, A.dtFechaVerificacion, A.dtFechaIdentificacion,
       A.dtFechaInvestigacion, A.dtFechaCierre,
       A.idCalidadEmpresa, C.szDescripcion EmpName,
       A.idCalidadSistema, D.szDescripcion SysName,
       A.szCodigoArea, E.szDescripcion AName, A.szCodigoArea+'-'+E.szDescripcion AreaName, 
       A.iSecuencia, A.szNomenclatura, 
       A.szDescripcion, A.iStatus, A.iEstadoDoc,
       A.bAprobado, 
       A.idCalidadIncidenteTema, H.szDescripcion ThemeName,
       A.idCalidadIncidenteRiesgo, I.szDescripcion RiskName,
       A.idCalidadIncidenteVulnerabilidad, J.szDescripcion VulnerabilityName,
       A.idCalidadIncidenteActivos, K.szDescripcion AssetsName,
       A.idCalidadIncidenteImpacto, L.szDescripcion ImpactName,
       A.szEvidencias,
       A.szCausas, A.IdCalidadDocumentoMejoraContinua,
       O.szNomenclatura NewAction,
       A.szResultadoEvidenciaCierre
from CalidadDocumentoIncidente      A inner join
     Usuarios                       B on A.idUsuarioSolicita = B.idUsuario                                       inner join
     CalidadEmpresas                C on A.idCalidadEmpresa = C.idCalidadEmpresa                                 inner join
     CalidadSistema                 D on A.idCalidadSistema = D.idCalidadSistema                                 inner join
     AreasCalidad                   E on A.idCalidadEmpresa = E.idCalidadEmpresa and
                                         A.szCodigoArea = E.szCodigoArea                                         left join
     Usuarios                       F on A.idUsuarioAprueba = F.idUsuario                                        left join
     Usuarios                       G on A.idUsuarioVerifica = G.idUsuario                                       left join
     CalidadIncidenteTema           H on A.idCalidadIncidenteTema = H.idCalidadIncidenteTema                     left join
     CalidadIncidenteRiesgo         I on A.idCalidadIncidenteRiesgo = I.idCalidadIncidenteRiesgo                 left join
     CalidadIncidenteVulnerabilidad J on A.idCalidadIncidenteVulnerabilidad = J.idCalidadIncidenteVulnerabilidad left join
     CalidadIncidenteActivo         K on A.idCalidadIncidenteActivos = K.idCalidadIncidenteActivo                left join
     CalidadIncidenteImpacto        L on A.idCalidadIncidenteImpacto = L.idCalidadIncidenteImpacto               left join
     Usuarios                       M on A.idUsuarioInvestiga = M.idUsuario                                      left join
     Usuarios                       N on A.idUsuarioCierra = N.idUsuario                                         left join
     CalidadDocumentoMejoraContinua O on A.IdCalidadDocumentoMejoraContinua = O.IdCalidadDocumentoMejoraContinua;

GO
