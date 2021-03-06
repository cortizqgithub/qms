USE [sqm]
GO
/****** Object:  StoredProcedure [dbo].[SPCONSOLIDAREVALUACIONESPROVEEDOR]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/*----------------------------------------------------------------------------*/
/* Source File:   SPCONSOLIDAREVALUACIONESPROVEEDOR                           */
/* Description:   Consolidate all evaluations for all suppliers.              */
/*                Used in CONSOLIDAREVALUACIONES.ASP                          */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Feb.17/2004                                                 */
/* Last Modified: Dec.19/2004                                                 */
/* Version:       1.7                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
 Versioning
 Feb.17/2004 Version 1.1
 Mar.17/2004 Version 1.2
 Mar.18/2004 Version 1.3
 Nov.29/2004 Version 1.4
 Dec.15/2004 Version 1.5
 Dec.17/2004 Version 1.6
 Dec.19/2004 Version 1.7
------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.17/2004 File ALTERED.
 Mar.17/2004 When average for supplier is less than 60, then it is disabled.
 Mar.18/2004 New fields to report.
 Nov.29/2004 Note for Mar.17/2004 "When average..." was implemented using
             less than and equal to (<=) and it is strictly to less than (<).
 Dec.15/2004 Added parameter @idpceval
------------------------------------------------------------------------------*/

/* NOTES:
  if iValPercentage > 60 and iValPercentage < 70 then iGradoControl = 2 end if     -- Alto
  if iValPercentage >= 70 and iValPercentage < 90 then iGradoControl = 1 end if    -- Medio
  if iValPercentage >= 90 and iValPercentage <= 100 then iGradoControl = 0 end if  -- Bajo
*/
CREATE           PROCEDURE [dbo].[SPCONSOLIDAREVALUACIONESPROVEEDOR]
  @idpceval INT
AS
BEGIN TRAN
    DECLARE @dtFROM int
    DECLARE @dtTO int

    -- Retrieve evaluation period
    SELECT @dtFROM = dtFI, @dtTO = dtFF FROM CONFIG

    -- Retrieve all of users who evaluated supplier, for reporting purposes.
    SELECT A.IDPROVEEDOR, A.IDUSUARIO, A.DTFECHAREGISTRO, A.DBLPUNTAJETOTAL, A.DBLPUNTAJEPOSIBLE, A.DBLPUNTAJEOBTENIDO
    INTO #TEVALUATORS
    FROM PROVEEDORRESULTADOEVALUACIONES A INNER JOIN
         PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR
    WHERE (A.bConsolidado = 0) AND
          (A.dtFechaRegistro BETWEEN @dtFROM AND @dtTO) AND
          (B.bActivo = 1)
    ORDER BY A.IDPROVEEDOR

    -- Retrieve and average dblPuntajeObtenido per evaluation per supplier
    SELECT A.idProveedor, COUNT(A.idProveedor) CntSuppliers,
           AVG(A.dblPuntajeObtenido) Average
    INTO #TSUPPAVG
    FROM PROVEEDORRESULTADOEVALUACIONES A INNER JOIN
         PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR
    WHERE (A.bConsolidado = 0) AND
          (A.dtFechaRegistro BETWEEN @dtFROM AND @dtTO) AND
          (B.bActivo = 1)
    GROUP BY A.IDPROVEEDOR
    ORDER BY A.IDPROVEEDOR

    -- Here we INNER JOIN #TEVALUATORS table with #TSUPPAVG so we can join to
    -- USUARIOS, PERFILES and AREAS tables
    SELECT A.IDPROVEEDOR, A.IDUSUARIO, A.DTFECHAREGISTRO, A.DBLPUNTAJETOTAL,
           A.DBLPUNTAJEPOSIBLE, A.DBLPUNTAJEOBTENIDO,
           B.CNTSUPPLIERS, B.AVERAGE
    INTO #TDATA
    FROM #TEVALUATORS A                                  INNER JOIN
         #TSUPPAVG    B ON A.idProveedor = B.idProveedor

    -- Mark all of those evaluations as being already consolidated
    UPDATE PROVEEDORRESULTADOEVALUACIONES
    SET bConsolidado = 1
    FROM PROVEEDORRESULTADOEVALUACIONES A INNER JOIN
         PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR
    WHERE (A.bConsolidado = 0) AND
          (A.dtFechaRegistro BETWEEN @dtFROM AND @dtTO) AND
          (B.bActivo = 1)

    -- Calculate new GradoControl for supplier on average grading.
    SELECT IDPROVEEDOR, CONVERT(VARCHAR(255), AVERAGE) AVERAGE, AVERAGE AVGR,
    CASE WHEN AVERAGE > 60 AND AVERAGE < 70 THEN 2
         WHEN AVERAGE >= 70 AND AVERAGE < 90 THEN 1
         WHEN AVERAGE >= 90 AND AVERAGE <= 100 THEN 0
         ELSE 0
    END NEWGRADOCONTROL, CntSuppliers
    INTO #T
    FROM #TSUPPAVG

    UPDATE PROVEEDORES
    SET SZPUNTAJE = A.AVERAGE,
        IGRADOCONTROL = NEWGRADOCONTROL
    FROM #T A INNER JOIN
         PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR

    -- At this point we record consolidation info for evaluated suppliers
    INSERT INTO ProveedorConsolidadoEvaluacionPrvInfoConsolidado(idPCEval, idProveedor, iGradoImportancia, iGradoControl, szPuntaje, bActivo)
    SELECT @idPCEval, A.idProveedor, A.iGradoImportancia, A.iGradoControl, A.szPuntaje, A.bActivo
    FROM PROVEEDORES A INNER JOIN
         #T          B ON A.IDPROVEEDOR = B.IDPROVEEDOR

    -- Inactivate supplier as evaluation result is under 60
    SELECT IDPROVEEDOR
    INTO #T1
    FROM #T
    WHERE AVGR < 60.0

    UPDATE PROVEEDORES
    SET BACTIVO = 0
    FROM #T1 A INNER JOIN
         PROVEEDORES B ON A.IDPROVEEDOR = B.IDPROVEEDOR

    -- Present user info as a whole report.
    SELECT A.IDPROVEEDOR, A.IDUSUARIO, A.DTFECHAREGISTRO,
           A.DBLPUNTAJETOTAL, A.DBLPUNTAJEPOSIBLE, A.DBLPUNTAJEOBTENIDO,
           A.CNTSUPPLIERS, A.AVERAGE,
           CASE WHEN B.SZNOMBRE IS NULL THEN ''
                ELSE B.SZNOMBRE
           END NOMBRE,
           CASE WHEN B.SZAPELLIDO IS NULL THEN ''
                ELSE B.SZAPELLIDO
           END APELLIDO,
           CASE WHEN B.SZCEDULA IS NULL THEN ''
                ELSE B.SZCEDULA
           END CEDULA,
           CASE WHEN C.SZNOMBRE IS NULL THEN ''
                ELSE C.SZNOMBRE
           END PERFIL,
           CASE WHEN D.SZNOMBRE IS NULL THEN ''
                ELSE D.SZNOMBRE
           END AREA,
           E.BACTIVO, E.IGRADOCONTROL, E.IGRADOIMPORTANCIA, E.SZNOMBRE PROVEEDOR, E.SZNIT NITPROVEEDOR
    INTO #TDATARESULT
    FROM #TDATA      A LEFT JOIN
         USUARIOS    B ON A.IDUSUARIO = B.IDUSUARIO LEFT JOIN
         PERFILES    C ON B.iPerfil = C.ID          LEFT JOIN
         AREAS       D ON B.iArea = D.idArea        LEFT JOIN
         PROVEEDORES E ON A.IDPROVEEDOR = E.IDPROVEEDOR
    ORDER BY A.IDPROVEEDOR

    -- Post records to consoliated info
    INSERT INTO PROVEEDORCONSOLIDADOEVALUACIONRESULTADO(idPCEval,dtFechaRegistro,idUsuario,idProveedor,iGradoControl,iGradoImportancia,dblPuntajeObtenido,dblPuntajeTotal,dblPuntajePosible, iCntSuppliers, dblAverage)
    SELECT @idpceval, dtFechaRegistro,idUsuario,idProveedor,iGradoControl,iGradoImportancia,dblPuntajeObtenido,dblPuntajeTotal,dblPuntajePosible, CNTSUPPLIERS, AVERAGE
    FROM #TDATARESULT
    -- Make all evaluators as if they all have made it
    UPDATE ProveedorEvaluadores SET bRealizada = 1

    -- Print result to user
    SELECT *
    FROM #TDATARESULT

    DROP TABLE #TEVALUATORS
    DROP TABLE #TSUPPAVG
    DROP TABLE #TDATA
    DROP TABLE #T
    DROP TABLE #T1
    DROP TABLE #TDATARESULT

    IF @@ERROR = 0
       COMMIT TRAN
    ELSE
       ROLLBACK TRAN





GO
