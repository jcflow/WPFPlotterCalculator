   M S B A M L   `   `   `  ����E  ACalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Calculator.ViewModelsCalculator.ViewModels  5          Calculator.Views.PlotView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      R NOxyPlot.Wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=75e952ba404cdbb0 oxyhttp://oxyplot.org/wpf  5      /local#clr-namespace:Calculator.ViewModels  5      .��5	      �   � RowDefinitions  5
   
   �� 5      $��9* �6   6*   �� 5      6    � ColumnDefinitions 5   
   �� 5      $��* �6   6+   �� 5      $��7* �6   6,   �� 5      $��2* �6   6,   .+�5   
   � $��3��6   $��5q�6#   .+�5        OxyPlot.Wpf.Plot     InvalidateFlag 6   �� *InvalidateFlag+   Axes 5        OxyPlot.Wpf.LinearAxis  5        OxyPlot.Wpf.Axis
   Key$ yAxis��6%      IsZoomEnabled .     IsPanEnabled .     Position$
 Left=�5   )      MajorGridlineStyle$ LongDash=�5   )   	   MajorGridlineColor$
	 Gray��5   )   
   Title$
 Y��5   )      Minimum$	 -25Q�5   )      Maximum$ 25Q�5   )     5       $ xAxis��6%    .   .  $ Bottom=�5#   )   $ LongDash=�5$   )   $
	 Gray��5%   )   $
 X��5&   )   $	 -25Q�5'   )   $ 25Q�5(   )      Series 5*        OxyPlot.Wpf.LineSeries  5+        OxyPlot.Wpf.Series   Color$	 Red��6D   ��6%   �� *Points+6D   5-      5.      �� 5/   
   -   5         ��Name$ label��5/      $��f(x) = ��6   $��20(�61   $��Oblique$�6?   $��Center=�6S   $��1��6p   $��Center=�6}   �� 50   
   -   5         ��Name$ textBox1��50      $��1��6$   $��20(�64   $��1��6B   $��Center=�6{   $��5q�6�   $��5q�6�   ��6O   ��  �� Path$ Function� �� Mode$ TwoWay=�6�   �� 51   
   -   5        $��
ButtonPlot��51      $
��Plot��6N    � ToolTip$
 Plot��6f   $
��Plot��6u   $��20(�6�   ���#2ecc71
�������$��2��6�   $��1��6�   $��5q�6�   ��6#   �� *PlotButtonPressCommand+6�   52      53      