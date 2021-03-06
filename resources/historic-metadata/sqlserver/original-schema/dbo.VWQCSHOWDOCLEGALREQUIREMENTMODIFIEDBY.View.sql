USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCLEGALREQUIREMENTMODIFIEDBY]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCLEGALREQUIREMENTMODIFIEDBY                       */
/* Description:   View to get a reference to 'modified by' relationship to    */
/*                legal requirements documents.                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Jan.06/2007                                                 */
/* Last Modified: Sep.15/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 NOTES:
 Same as VWQCSHOWDOCLEGALREQUIREMENTUPDATES
 Notice that here you retrieve the information to which idCalidadRequisitoLegal 
 field is modified by iLinkModificadoLink, thus, iLinkModificadoLink is target 
 and idCalidadRequisitoLegal is source for a view perspective about data 
 interpretation.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 Jan.06/2007 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCLEGALREQUIREMENTMODIFIEDBY]
AS
SELECT *
FROM VWQCSHOWDOCLEGALREQUIREMENTUPDATES

GO
