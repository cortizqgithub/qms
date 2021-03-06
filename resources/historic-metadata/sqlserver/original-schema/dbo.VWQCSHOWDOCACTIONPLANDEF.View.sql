USE [sqm]
GO
/****** Object:  View [dbo].[VWQCSHOWDOCACTIONPLANDEF]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*----------------------------------------------------------------------------*/
/* Source File:   VWQCSHOWDOCACTIONPLANDEF                                    */
/* Description:   Show info about qc Action plan docs.                        */
/* Author:        Carlos Adolfo Ortiz Quiros                                  */
/* Date:          Sep.03/2004                                                 */
/* Last Modified: Sep.03/2004                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2004 Cinemática Producciones Ltda.                          */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Sep.03/2004 File created.
------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[VWQCSHOWDOCACTIONPLANDEF]
AS
SELECT A.idCalidadDocumentoRevisionDireccionPlanAccionDef,
       A.idCalidadDocumentoRevisionDireccionPlanAccion,
       A.szActividades, A.szJustificacion, A.szProcedimiento,
       A.idResponsable, A.dtPlazo,
       B.szNombre + ' ' + B.szApellido UsrName
FROM CalidadDocumentoRevisionDireccionPlanAccionDef A INNER JOIN
     Usuarios                                       B ON A.idResponsable = B.idUsuario


GO
