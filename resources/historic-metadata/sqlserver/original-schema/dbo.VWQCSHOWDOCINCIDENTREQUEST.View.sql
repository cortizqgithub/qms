USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINCIDENTREQUEST]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINCIDENTREQUEST                                  */
/* Description:   Show info about qc incident request docs.                   */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.06/2013                                                 */
/* Last Modified: Jul.06/2013                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.06/2013 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCINCIDENTREQUEST]
AS
select A.idCalidadDocumentoIncidenteSolicitud, 
       A.idUsuario, B.szNombre + ' ' + B.szApellido UsrNameRequest, 
       A.dtFechaSolicitud, A.bTramitado,
       A.idCalidadEmpresa, C.szDescripcion EmpName,
       A.idCalidadSistema, D.szDescripcion SysName,
       A.szCodigoArea, E.szDescripcion AName, A.szCodigoArea+'-'+E.szDescripcion AreaName, A.dtFechaIdentificacion,
       A.szDescripcion
from CalidadDocumentoIncidenteSolicitud A inner join
     Usuarios                           B on A.idUsuario = B.idUsuario               inner join
     CalidadEmpresas                    C on A.idCalidadEmpresa = C.idCalidadEmpresa inner join
     CalidadSistema                     D on A.idCalidadSistema = D.idCalidadSistema inner join
     AreasCalidad                       E on A.idCalidadEmpresa = E.idCalidadEmpresa and
                                             A.szCodigoArea = E.szCodigoArea

GO
