USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPREPORTEEVENTOSPROVEEDOR]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




/*----------------------------------------------------------------------------*/
/* Source File:   SPREPORTEEVENTOSPROVEEDOR                                   */
/* Description:   Retrieve all events for provided supplier id                */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.06/2004                                                 */
/* Last Modified: Dec.19/2004                                                 */
/* Version:       1.4                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 Versioning
 Feb.06/2004 Version 1.1
 Feb.23/2004 Version 1.2
 Dec.17/2004 Version 1.3
 Dec.19/2004 Version 1.4
------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.06/2004 File ALTERED.
 Feb.09/2004 Added some notes.
 Feb.13/2004 Added requester for evaluation/tracking events.
 Feb.23/2004 Changed way to retrieve evaluations due to a change in the PK of
             table PROVEEDOREVALUADORES.
 Dec.17/2004 Added event consolidation.
------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------*/
/* NOTES:                                                                     */
/*    Given the supplier in parameter @id, retrieves all events.              */
/*    The events possible are Tracking, evaluation, registration.             */
/*    For every event an id pointing to record is given except for            */
/*    registration which returns 0 always, this is a responsibility for       */
/*    programmer.                                                             */
/*----------------------------------------------------------------------------*/

CREATE            PROCEDURE [dbo].[SPREPORTEEVENTOSPROVEEDOR]
  @id INT
AS
SELECT DISTINCT 4 Consolidacion, idPCEval, idProveedor, dtFechaRegistro, NULL GImportancia, NULL GControl, NULL IDUSUARIO
INTO #TCONSOLIDATION
FROM ProveedorConsolidadoEvaluacionResultado
WHERE idProveedor = @id

UPDATE #TCONSOLIDATION
SET GImportancia = A.iGradoImportancia,
    GControl = A.iGradoControl
FROM ProveedorConsolidadoEvaluacionPrvInfoConsolidado A
WHERE A.idProveedor = @id

SELECT 3 Seguimiento, idProveedorSeguimiento, idProveedor, dtFechaRegistroAnomalia,
       iGradoImportancia, iGradoControl, IdUsuario
INTO #TTRACKING
FROM ProveedorSeguimientos
WHERE idProveedor = @id

SELECT 2 Evaluacion, A.idProveedorResultadoEvaluacion, A.idProveedor, A.dtFechaRegistro,
       A.iGradoImportancia, A.iGradoControl, B.IdUsuario
INTO #TEVALUATION
FROM ProveedorResultadoEvaluaciones A LEFT JOIN
     ProveedorEvaluadores B ON A.IDUSUARIO = B.IDUSUARIO AND
                               A.IDPROVEEDOR = B.IDPROVEEDOR
WHERE A.idProveedor = @id

SELECT 1 Inscripcion, 0 Dummy, idProveedor, dtFecha, iGradoImportancia, iGradoControl, NULL IDUSUARIO
INTO #TREGISTRATION
FROM Proveedores
WHERE idProveedor = @id

SELECT * INTO #TALL FROM #TREGISTRATION
UNION ALL
SELECT * FROM #TTRACKING
UNION ALL
SELECT * FROM #TEVALUATION
UNION ALL
SELECT * FROM #TCONSOLIDATION

SELECT A.dtFecha, A.Inscripcion Evento, A.Dummy id, A.iGradoImportancia, A.iGradoControl, B.szNombre + ' ' + B.szApellido Solicitante
FROM #TALL A LEFT JOIN USUARIOS B ON A.IDUSUARIO = B.IDUSUARIO
ORDER BY dtFecha, Evento

DROP TABLE #TCONSOLIDATION
DROP TABLE #TTRACKING
DROP TABLE #TEVALUATION
DROP TABLE #TREGISTRATION
DROP TABLE #TALL






GO
