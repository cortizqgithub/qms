USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWREQUESTSDOCIMPROVEMENTFULL]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWREQUESTSDOCIMPROVEMENTFULL                          */
/* Description:   View to select info to know which new improvement documents */
/*                are issued.                                                 */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.11/2004                                                 */
/* Last Modified: May.27/2013                                                 */
/* Version:       1.3                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*                2013 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.11/2004 File created.
------------------------------------------------------------------------------*/

CREATE   VIEW [dbo].[VWQCSHOWREQUESTSDOCIMPROVEMENTFULL]
AS
SELECT A.IdCalidadMejoraContinuaSolicitud, A.bTramitado,
       B.szNombre + ' ' + B.szApellido UsrName,
       A.dtFechaSolicitud, A.idCalidadEmpresa, C.szDescripcion EmpName,
       A.idCalidadSistema, D.szDescripcion SysName,
       A.szTipoAccioncalidad, E.szDescripcion ActionTypeName,
       A.szCodigoArea, F.szDescripcion AreaName, A.szCodigoArea + '-' + F.szDescripcion AName,
       A.dtFechaIdentificacion, A.idTipoAreaDetectoraCalidad, G.szDescripcion DetectingAreaName,
       A.szNroAuditoria, A.szDescNoConformidad, A.idCalidadNumerales, H.szNumeral, H.szDescripcion NumeralName,
       H.szNumeral + '-' + H.szDescripcion NName, H.idCalidadGrupo, I.szDescripcion GroupName,
       A.idImpacto, J.szDescripcion ImpactName,
       A.idCalidadTema, K.szDescripcion ThemeName
FROM CalidadMejoraContinuaSolicitud A                                                                    INNER JOIN
     Usuarios                       B ON A.idUsuario = B.idUsuario                                       INNER JOIN
     CalidadEmpresas                C ON A.idCalidadEmpresa = C.idCalidadEmpresa                         INNER JOIN
     CalidadSistema                 D ON A.idCalidadSistema = D.idCalidadSistema                         INNER JOIN
     TipoAccionCalidad              E ON A.szTipoAccionCalidad = E.szTipoAccionCalidad                   INNER JOIN
     AreasCalidad                   F ON A.idCalidadEmpresa = F.idCalidadEmpresa AND
                                         A.szCodigoArea = F.szCodigoArea                                 INNER JOIN
     TipoAreaDetectoraCalidad       G ON A.idTipoAreaDetectoraCalidad = G.idTipoAreaDetectoraCalidad AND
                                         A.szTipoAccionCalidad = G.szTipoAccionCalidad                   INNER JOIN
     CalidadNumerales               H ON A.idCalidadSistema = H.idCalidadSistema AND
                                         A.idCalidadNumerales = H.idCalidadNumerales                     LEFT JOIN
     CalidadGrupos                  I ON H.idCalidadGrupo = I.idCalidadGrupo                             INNER JOIN
     TipoImpactoCalidad             J ON A.idImpacto = J.idTipoImpactoCalidad                            LEFT JOIN
     CalidadTema                    K ON A.idCalidadTema = K.idCalidadTema;


GO
