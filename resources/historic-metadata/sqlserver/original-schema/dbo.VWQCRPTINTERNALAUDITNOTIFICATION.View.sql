USE [sqm]
GO
/****** Object:  View [dbo].[VWQCRPTINTERNALAUDITNOTIFICATION]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCRPTINTERNALAUDITNOTIFICATION                            */
/* Description:   This view retrieves all NC by Notification per program.     */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          May.31/2006                                                 */
/* Last Modified: May.31/2006                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2006 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
  NOTES: Uses VWQCSHOWDOCFULLINTERNALAUDITNC
         All logic is contained in VWQCSHOWDOCFULLINTERNALAUDITNC, thus, this 
         view is a total wrapper for that view for naming usage only.
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 History
 May.31/2006 File created.
------------------------------------------------------------------------------*/
CREATE  VIEW [dbo].[VWQCRPTINTERNALAUDITNOTIFICATION]
AS
SELECT *
FROM VWQCSHOWDOCFULLINTERNALAUDITNOTIFNC

GO
