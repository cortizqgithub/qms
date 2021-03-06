USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCIMPROVEMENTADVANCE]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCIMPROVEMENTADVANCE                               */
/* Description:   View to select info to know which advances has been made to */
/*                docs.                                                       */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jul.10/2004                                                 */
/* Last Modified: Jul.10/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Jul.06/2004 File created.
 Jul.06/2004 Changed for db restructure.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCSHOWDOCIMPROVEMENTADVANCE]
AS
SELECT idCalidadDocumentoMejoraContinuaAvances, idCalidadDocumentoMejoraContinua, szAvance, dtFecha
FROM CalidadDocumentoMejoraContinuaAvances




GO
