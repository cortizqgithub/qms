USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPREQLEGALUPDATECOUNTERSFOR]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*----------------------------------------------------------------------------*/
/* Source File:   SPREQLEGALUPDATECOUNTERSFOR                                 */
/* Description:   Updates counter for CALIDADREQUISITOLEGAL                   */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Aug.07/2007                                                 */
/* Last Modified: Sep.22/2007                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2007 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Aug.07/2007 File created.
------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[SPREQLEGALUPDATECOUNTERSFOR]
  @ID INTEGER
AS
DECLARE @CNTMODIFIEDBY INTEGER
DECLARE @CNTMODIFYTO INTEGER
DECLARE @CNTUPDATES INTEGER

SELECT @CNTMODIFIEDBY = COUNT(1)
FROM VWQCSHOWDOCLEGALREQUIREMENTMODIFIEDBY 
WHERE idCalidadRequisitoLegal = @ID AND BTRAMITADO = 1

SELECT @CNTMODIFYTO = COUNT(1)
FROM VWQCSHOWDOCLEGALREQUIREMENTMODIFYTO 
WHERE iLinkModificadoPor = @ID AND BTRAMITADO = 1

SELECT @CNTUPDATES = COUNT(1)
FROM CALIDADREQUISITOLEGALCAMBIOLINKS
WHERE idCalidadRequisitoLegal = @ID AND BTRAMITADO = 0

UPDATE CALIDADREQUISITOLEGAL
SET ICNTMODIFICADOPOR = @CNTMODIFIEDBY,
    ICNTMODIFICAA = @CNTMODIFYTO
WHERE IDCALIDADREQUISITOLEGAL = @ID

UPDATE CALIDADREQUISITOLEGAL
SET ICNTUPDATES = @CNTUPDATES
WHERE IDCALIDADREQUISITOLEGAL = @ID

GO
