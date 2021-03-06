USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPPROVEEDORAREASCHECKED]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*----------------------------------------------------------------------------*/
/* Source File:   SPPROVEEDORAREASCHECKED                                     */
/* Description:   Retrieve all checked areas for a supplier.                  */
/*                Used in EDITARPROVEEDORES.ASP                               */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Mar.02/2004                                                 */
/* Last Modified: Nov.10/2004                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Mar.02/2004 File ALTERed.
 Nov.10/2004 File ALTERed.
------------------------------------------------------------------------------*/
CREATE   PROCEDURE [dbo].[SPPROVEEDORAREASCHECKED]
  @idprv INT
AS
SELECT IdArea
INTO #T1
FROM PROVEEDORAREAS
WHERE IDPROVEEDOR = @idprv

SELECT CASE WHEN A.IDAREA IS NULL THEN ''
            ELSE ' checked'
       END chk,
       B.IdArea, B.szNombre
FROM #T1   A RIGHT JOIN
     AREAS B ON A.IDAREA = B.IDAREA
ORDER BY B.szNombre

DROP TABLE #T1


GO
