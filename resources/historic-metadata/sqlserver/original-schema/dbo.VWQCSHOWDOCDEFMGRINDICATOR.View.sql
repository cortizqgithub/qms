USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCDEFMGRINDICATOR]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCDEFMGRINDICATOR                                  */
/* Description:   Show info about qc management indicator definition.         */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.10/2004                                                 */
/* Last Modified: Sep.10/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.10/2004 File created.
------------------------------------------------------------------------------*/
CREATE   VIEW [dbo].[VWQCSHOWDOCDEFMGRINDICATOR]
AS
SELECT A.idCalidadDocumentoRevisionDireccionIndicadores, A.idCalidadEmpresa,
       A.iYear, A.szCodigoArea, A.szNomenclatura, A.iSecuencia,
       A.idUsuarioResponsable,A.dtInicio, A.dtFin, A.idUsuarioSolicita,
       A.dtSolicitud, A.iStatus, A.bAprobado, A.dtUltimaActualizacion,
       B.szDescripcion EmpName,
       C.szNombre + ' ' + C.szApellido UsrResponsibleName,
       D.szNombre + ' ' + D.szApellido UsrRequestName,
       E.szDescripcion AreaName
FROM CalidadDocumentoRevisionDireccionIndicadores A                                                INNER JOIN
     CalidadEmpresas                              B ON A.idCalidadEmpresa = B.idCalidadEmpresa     INNER JOIN
     Usuarios                                     C ON A.idUsuarioResponsable = C.idUsuario        INNER JOIN
     Usuarios                                     D ON A.idUsuarioSolicita = D.idUsuario           INNER JOIN
     AreasCalidad                                 E ON A.idCalidadEmpresa = E.idCalidadEmpresa AND
                                                       A.szCodigoArea = E.szCodigoArea



GO
