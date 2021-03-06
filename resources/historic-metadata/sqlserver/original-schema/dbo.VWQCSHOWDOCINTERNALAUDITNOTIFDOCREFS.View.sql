USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIFDOCREFS]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCINTERNALAUDITNOTIFDOCREFS                        */
/* Description:   View to select info regarding internal audit info.          */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.20/2004                                                 */
/* Last Modified: Sep.20/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES:
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Sep.20/2004 File created.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCINTERNALAUDITNOTIFDOCREFS]
AS
SELECT A.idCalidadDocumentoAuditoriaInternaNotificacionDocRefs,
       A.idCalidadDocumentoAuditoriaInternaNotificacion,
       A.idCalidadDocumentos,
       B.szNomenclatura, B.szNombre
FROM CalidadDocumentoAuditoriaInternaNotificacionDocRefs A INNER JOIN
     CalidadDocumentos                                   B ON A.idCalidadDocumentos = B.idCalidadDocumentos


GO
