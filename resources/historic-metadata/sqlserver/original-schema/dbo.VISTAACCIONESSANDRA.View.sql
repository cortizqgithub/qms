USE [sqm]
GO
/****** Object:  View [dbo].[VISTAACCIONESSANDRA]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTAACCIONESSANDRA]
AS
SELECT     TOP (100) PERCENT dbo.CalidadDocumentoMejoraContinua.szTipoAccionCalidad AS TipoAccion, 
                      dbo.CalidadDocumentoMejoraContinua.szNomenclatura AS Codigo, 
                      dbo.CalidadDocumentoMejoraContinua.dtFechaIdentificacion AS FechaIdentificacion, 
                      dbo.CalidadDocumentoMejoraContinua.szDescNoConformidad AS Descripcion_NC, 
                      dbo.CalidadDocumentoMejoraContinua.szCierre AS Descripcion_cierre, dbo.CalidadEmpresas.szDescripcion AS Empresa, 
                      dbo.CalidadSistema.szDescripcion AS Sistema, dbo.CalidadNumerales.szNumeral AS Numeral, 
                      dbo.CalidadNumerales.szDescripcion AS Descripcion_Numeral, dbo.CalidadGrupos.szDescripcion AS Grupo, dbo.AreasCalidad.szDescripcion AS Area, 
                      dbo.CalidadDocumentoMejoraContinua.szViabilidad AS Viabilidad
FROM         dbo.CalidadDocumentoMejoraContinua INNER JOIN
                      dbo.CalidadEmpresas ON dbo.CalidadDocumentoMejoraContinua.idCalidadEmpresa = dbo.CalidadEmpresas.IdCalidadEmpresa INNER JOIN
                      dbo.CalidadSistema ON dbo.CalidadDocumentoMejoraContinua.idCalidadSistema = dbo.CalidadSistema.idCalidadSistema INNER JOIN
                      dbo.CalidadNumerales ON dbo.CalidadDocumentoMejoraContinua.idCalidadNumerales = dbo.CalidadNumerales.idCalidadNumerales AND 
                      dbo.CalidadSistema.idCalidadSistema = dbo.CalidadNumerales.idCalidadSistema INNER JOIN
                      dbo.CalidadGrupos ON dbo.CalidadNumerales.idCalidadGrupo = dbo.CalidadGrupos.idCalidadGrupo INNER JOIN
                      dbo.AreasCalidad ON dbo.CalidadEmpresas.IdCalidadEmpresa = dbo.AreasCalidad.IdCalidadEmpresa AND 
                      dbo.CalidadDocumentoMejoraContinua.szCodigoArea = dbo.AreasCalidad.szCodigoArea
WHERE     (dbo.CalidadDocumentoMejoraContinua.dtFechaIdentificacion >= 20110101)
ORDER BY FechaIdentificacion

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CalidadDocumentoMejoraContinua"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 368
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CalidadEmpresas"
            Begin Extent = 
               Top = 6
               Left = 406
               Bottom = 84
               Right = 572
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CalidadSistema"
            Begin Extent = 
               Top = 6
               Left = 610
               Bottom = 99
               Right = 774
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CalidadNumerales"
            Begin Extent = 
               Top = 6
               Left = 812
               Bottom = 114
               Right = 985
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CalidadGrupos"
            Begin Extent = 
               Top = 84
               Left = 406
               Bottom = 162
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AreasCalidad"
            Begin Extent = 
               Top = 102
               Left = 596
               Bottom = 210
               Right = 762
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTAACCIONESSANDRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2115
         Table = 1770
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTAACCIONESSANDRA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTAACCIONESSANDRA'
GO
