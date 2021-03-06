USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPEDITARPROVEEDOREVALUADORES]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*----------------------------------------------------------------------------*/
/* Source File:   SPEDITARPROVEEDOREVALUADORES                                */
/* Description:   Given an user id and a list of selected suppliers for an    */
/*                evaluator this process is responsible for creating/deleting */
/*                records to the PROVEEDOREVALUADORES table.                  */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.19/2004                                                 */
/* Last Modified: Feb.20/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.19/2004 File created.
 Feb.20/2004 Other instructions pending.
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
  NOTE: szList is up to 8000 characters wide then if list is longer than that
        then you must split list and call this procedure as many times as
        needed.
------------------------------------------------------------------------------*/
CREATE PROCEDURE [dbo].[SPEDITARPROVEEDOREVALUADORES]
  @idusr INT,
  @szList VARCHAR(8000)
AS

DECLARE @s VARCHAR(8000)

SELECT IDPROVEEDOR IDPROVEEDORSAVED, 1 SAVED
INTO #TSAVED
FROM PROVEEDOREVALUADORES
WHERE IDUSUARIO = @idusr

SET @s =
'SELECT IDPROVEEDOR IDPROVEEDORSELECTED, 2 SELECTED '+
'INTO ##TSELECTED ' +
'FROM PROVEEDORES ' +
'WHERE IDPROVEEDOR IN (' + @szList + ')'
EXEC(@s)

SELECT *
INTO #TUNION
FROM #TSAVED A LEFT JOIN
     ##TSELECTED B ON A.IDPROVEEDORSAVED = B.IDPROVEEDORSELECTED
UNION ALL
SELECT *
FROM #TSAVED A RIGHT JOIN
     ##TSELECTED B ON A.IDPROVEEDORSAVED = B.IDPROVEEDORSELECTED

-- Records to delete
DELETE FROM PROVEEDOREVALUADORES
WHERE idUsuario = @idusr AND
      IdProveedor IN
        (
         SELECT IdProveedorSaved
         FROM #TUNION
         WHERE SELECTED IS NULL
        )

-- Records to insert
INSERT INTO PROVEEDOREVALUADORES(idUsuario, idProveedor, bRealizada)
SELECT @idUsr, idProveedorSelected, 0
FROM #TUNION
WHERE SAVED IS NULL

DROP TABLE #TSAVED
DROP TABLE ##TSELECTED
DROP TABLE #TUNION




GO
