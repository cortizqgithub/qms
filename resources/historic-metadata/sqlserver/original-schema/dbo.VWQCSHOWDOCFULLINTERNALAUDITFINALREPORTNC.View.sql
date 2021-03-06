USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCFULLINTERNALAUDITFINALREPORTNC]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCFULLINTERNALAUDITFINALREPORTNC                   */
/* Description:   Points to final reports for Internal audit suited for       */
/*                reporting tasks including NC related information.           */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jun.01/2006                                                 */
/* Last Modified: Jun.01/2006                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jun.01/2006 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCFULLINTERNALAUDITFINALREPORTNC]
AS
SELECT A.*,
       D.idCalidadNumerales, 
       E.szDescripcion NumeralName,
       F.idCalidadGrupo, 
       F.szDescripcion NumeralGroupName
FROM VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT        A                                                                                                        INNER JOIN
     CalidadDocumentoAuditoriaInternaInformeFinalNC D ON A.idCalidadDocumentoAuditoriaInternaInformeFinal = D.idCalidadDocumentoAuditoriaInternaInformeFinal INNER JOIN
     CalidadNumerales                               E ON D.idCalidadNumerales = E.idCalidadNumerales AND
                                                         D.idCalidadSistema = E.idCalidadSistema                                                             INNER JOIN
     CalidadGrupos                                  F ON E.idCalidadGrupo = F.idCalidadGrupo

GO
