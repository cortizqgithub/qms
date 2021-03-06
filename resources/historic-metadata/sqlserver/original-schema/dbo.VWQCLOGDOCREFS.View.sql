USE [sqm]
GO
/****** Object:  View [dbo].[VWQCLOGDOCREFS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCLOGDOCREFS                                              */
/* Description:   View to select info regarding document references stored in */
/*                logs about qc documents                                     */
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
CREATE   VIEW [dbo].[VWQCLOGDOCREFS]
AS
SELECT A.idCalidadDocumentoControlCambios,
       A.idCalidadDocumentosRef,
       B.iCalidadEmpresa, B.szCodigoArea, B.szCodigoTipoDocumento, B.szNomenclatura,
       B.szNombre, B.iVersion, B.dtFechaVersion,
       C.szDescripcion DocTypeName,
       D.szDescripcion AreaName,
       E.szDescripcion EmpName
FROM CalidadDocumentoControlCambiosDocReferencia A INNER JOIN
     CalidadDocumentos                           B ON A.idCalidadDocumentosRef = B.idCalidadDocumentos INNER JOIN
     TipoDocumentoCalidad                        C ON B.iCalidadEmpresa = C.idCalidadEmpresa AND
                                                      B.szCodigoTipoDocumento = C.szCodigoDocumento    INNER JOIN
     AreasCalidad                                D ON B.iCalidadEmpresa = D.idCalidadEmpresa AND
                                                      B.szCodigoArea = D.szCodigoArea                  INNER JOIN
     CalidadEmpresas                             E ON D.idCalidadEmpresa = E.idCalidadEmpresa




GO
