USE [sqm]
GO
/****** Object:  View [dbo].[VWQCRPTINTERNALAUDITFINALREPORT]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCRPTINTERNALAUDITFINALREPORT                             */
/* Description:   Points to final reports for Internal audit suited for       */
/*                reporting tasks. NOTE, this is a wrapper for query noted    */
/*                NOTES section below.                                        */
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
CREATE VIEW [dbo].[VWQCRPTINTERNALAUDITFINALREPORT]
AS
SELECT *
FROM VWQCSHOWDOCFULLINTERNALAUDITFINALREPORT

GO
