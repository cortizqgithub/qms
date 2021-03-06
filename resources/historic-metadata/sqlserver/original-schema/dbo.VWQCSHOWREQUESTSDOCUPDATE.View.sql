USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWREQUESTSDOCUPDATE]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWREQUESTSDOCUPDATE                                   */
/* Description:   View to select info to know which new documents are issued  */
/*                for creation.                                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.14/2004                                                 */
/* Last Modified: Jun.21/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 May.14/2004 File created.
 Jun.21/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE   VIEW [dbo].[VWQCSHOWREQUESTSDOCUPDATE]
AS
SELECT  A.idCalidadDocumentoSolicitud, A.idCalidadDocumentos, A.idCalidadDocumentoNuevo, A.idUsuario,
        A.iTipoModificacion, A.dtFechaSolicitud, A.dtFechaVersionNueva, A.iVersionNueva,
        B.szNombre + ' ' + B.szApellido UserName,
        C.szNombre, C.szNomenclatura,
        D.szDescripcion DocTypeName,
        E.szDescripcion AreaName,
        F.szDescripcion EmpName,
        A.bTramitado
FROM CalidadDocumentoSolicitud A                                                      INNER JOIN
     Usuarios                  B ON A.idUsuario = B.idUsuario                             INNER JOIN
     CalidadDocumentos         C ON A.idCalidadDocumentos = C.idCalidadDocumentos INNER JOIN
     TipoDocumentoCalidad      D ON C.iCalidadEmpresa  = D.idCalidadEmpresa AND
                                    C.szCodigoTipoDocumento = D.szCodigoDocumento INNER JOIN
     AreasCalidad              E ON C.iCalidadEmpresa = E.idCalidadEmpresa AND
                                    C.szCodigoArea = E.szCodigoArea INNER JOIN
     CalidadEmpresas           F ON E.idCalidadEmpresa = F.idCalidadEmpresa
WHERE A.iTipoModificacion = 2




GO
