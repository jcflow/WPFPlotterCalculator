   M S B A M L   `   `   `  ����E  ACalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Calculator.ViewModelsCalculator.ViewModels  5      5clr-namespace:Calculator.ModelsCalculator.Models  5      3clr-namespace:Calculator.ViewsCalculator.Views  5      %    Calculator.Views.CalculatorView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      R NOxyPlot.Wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=75e952ba404cdbb0 oxyhttp://oxyplot.org/wpf  5      /local#clr-namespace:Calculator.ViewModels  5      'mclr-namespace:Calculator.Models  5      *viewsclr-namespace:Calculator.Views  5      :d2http://schemas.microsoft.com/expression/blend/2008  5        � 	Resources  5	      /   )Calculator.ViewModels.EnumToBoolConverter   EnumToBoolConverter��%   &	          5
   
   6$   5      .��5      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6   .+�5   
   �� -   5        $��ButtonPoint��5      ,   &Calculator.ViewModels.ActionButtonType   POINT#��Z 6Q   $��5q�6�   $��2��6�   $��7��6�   $��20(�6�   $
��Bold"�6�   ��6$   �� *ActionButtonPressCommand+.��6�   .6�   �� 5    
   -   5        $��Button0��5       +   %Calculator.ViewModels.DigitButtonType   NUMBER_0#��Z 6L   $��5q�6�   $��3��6�   $��7��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   06�   �� 5!   
   -   5        $��ButtonEqual��5!      /   )Calculator.ViewModels.OperationButtonType   EQUAL#��Z 6Z   $��5q�6�   
�������
�������$��4��6�   $��6��6�   $��20(�6�   $
��Bold"�6�   ��6$   �� *#!BinaryOperationButtonPressCommand+.��6	  =6  �� 5#   
   -   5        $��Button1��5#         NUMBER_1#��Z 6L   $��5q�6�   $��2��6�   $��5��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   16�   �� 5$   
   -   5        $��Button2��5$         NUMBER_2#��Z 6L   $��5q�6�   $��3��6�   $��5��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   26�   �� 5%   
   -   5        $��Button3��5%         NUMBER_3#��Z 6L   $��5q�6�   $��4��6�   $��5��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   36�   �� 5'   
   -   5        $��Button4��5'      	   NUMBER_4#��Z	 6L   $��5q�6�   $��2��6�   $��4��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   46�   �� 5(   
   -   5        $��Button5��5(      
   NUMBER_5#��Z
 6L   $��5q�6�   $��3��6�   $��4��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   56�   �� 5)   
   -	   5        $��Button6��5)         NUMBER_6#��Z 6L   $��5q�6�   $��4��6�   $��4��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   66�   �� 5+   
   -
   5        $��Button7��5+         NUMBER_7#��Z 6L   $��5q�6�   $��2��6�   $��3��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   76�   �� 5,   
   -   5        $��Button8��5,         NUMBER_8#��Z 6L   $��5q�6�   $��3��6�   $��3��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   86�   �� 5-   
   -   5        $��Button9��5-         NUMBER_9#��Z 6L   $��5q�6�   $��4��6�   $��3��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   96�   �� 5/   
   -   5        $��ButtonA��5/         LETTER_A#��Z 6L   $��5q�6�   $��0��6�   $��6��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   A6�   �� 50   
   -   5        $��ButtonB��50         LETTER_B#��Z 6L   $��5q�6�   $��1��6�   $��6��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   B6�   �� 52   
   -   5        $��ButtonC��52         LETTER_C#��Z 6L   $��5q�6�   $��0��6�   $��5��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   C6�   �� 53   
   -   5        $��ButtonD��53         LETTER_D#��Z 6L   $��5q�6�   $��1��6�   $��5��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   D6�   �� 55   
   -   5        $��ButtonE��55         LETTER_E#��Z 6L   $��5q�6�   $��0��6�   $��4��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   E6�   �� 56   
   -   5        $��ButtonF��56         LETTER_F#��Z 6L   $��5q�6�   $��1��6�   $��4��6�   $��20(�6�   $
��Bold"�6�   ��6    �� *DigitButtonPressCommand+.��6�   F6�   �� 58   
   -   5        $��ButtonFactorial��58         	FACTORIAL#��Z 6^   
�������$��5q�6�   $��5��6�   $��1��6�   
�������$��20(�6�   $
��Bold"�6�   ��6(   �� *#!SingleOperationButtonPressCommand+.��6  !6  �� 59   
   -   5        $��ButtonChangeSign��59         CHANGE_SIGN#��Z 6_   
�������$��5q�6�   $��4��6�   $��2��6�   
�������$��20(�6�   $
��Bold"�6  ��6)   �� *#!SingleOperationButtonPressCommand+.��6  +/-6  �� 5:   
   -   5        $��ButtonPosition��5:         POSITION#��Z 6]   
�������$��5q�6�   $��3��6�   $��2��6�   
�������$��20(�6�   $
��Bold"�6�   ��6'   �� *#!SingleOperationButtonPressCommand+.��6  1/x6  �� 5;   
   -   5        $��ButtonInverse��5;         INVERSE#��Z 6\   
�������$��5q�6�   $��2��6�   $��2��6�   
�������$��20(�6�   $
��Bold"�6�   ��6&   �� *#!SingleOperationButtonPressCommand+.��6  ~6  �� 5<   
   -   5        $��ButtonRadical��5<         RADICAL#��Z 6\   
�������$��5q�6�   $��1��6�   $��3��6�   
�������$��20(�6�   $
��Bold"�6�   ��6&   �� *#!BinaryOperationButtonPressCommand+.��6  y√x6  �� 5=   
   -   5        $��ButtonExponentiation��5=         EXPONENTIATION#��Z 6c   
�������$��5q�6�   $��0��6�   $��3��6�   
�������$��20(�6�   $
��Bold"�6	  ��6-   �� *#!BinaryOperationButtonPressCommand+.��6  x^y6   �� 5>   
   -   5        $��ButtonDivide��5>         DIVISION#��Z 6[   
�������$��5q�6�   $��5��6�   $��2��6�   
�������$��20(�6�   $
��Bold"�6�   ��6%   �� *#!BinaryOperationButtonPressCommand+.��6  ÷6  �� 5?   
   -   5        $��ButtonMultiply��5?         MULTIPLICATION#��Z 6]   
�������$��5q�6�   $��5��6�   $��3��6�   
�������$��20(�6�   $
��Bold"�6  ��6'   �� *#!BinaryOperationButtonPressCommand+.��6  ×6  �� 5@   
   -   5        $��ButtonMinus��5@         SUBTRACTION#��Z 6Z   
�������$��5q�6�   $��5��6�   $��4��6�   
�������$��20(�6�   $
��Bold"�6�   ��6$   �� *#!BinaryOperationButtonPressCommand+.��6  -6  �� 5A   
   -   5        $��
ButtonPlus��5A      
   SUM#��Z 6Y   
�������$��5q�6�   $��5��6�   $��5��6�   $��2��6�   
�������$��20(�6�   $
��Bold"�6  ��6#   �� *#!BinaryOperationButtonPressCommand+.��6  +6  �� 5C   
   -   5        $��ButtonClear��5C         CLEAR#��Z 6Q   
��� ���$��5q�6�   $��4��6�   $��1��6�     � ToolTip$  	Clear All��6�   
�������$��20(�6�   $
��Bold"�6�   ��6$   �� *ActionButtonPressCommand+.��6  C6  �� 5D   
   -   5        $��	ButtonDel��5D      !   DELETE#��Z! 6O   
�������$��5q�6�   $��2��6�   $��1��6�   $  Delete��6�   $��2��6�   
�������$��20(�6  $
��Bold"�6  ��6"   �� *ActionButtonPressCommand+.��6!  ←6$  �� 5F   
   -   5        $��
DisplayBox��5F      $��0��6$   $��0��64   $��6��6A   " �� 
IsReadOnly" . $��5q�6�   $��24(�6�   # �� TextAlignment$# Right=�6�   $��Center=�6�   $��10q�6�   ��6g   �� $ �� Path$$ Display�% �� Mode$% TwoWay=�6�   �� 5H   
   $��0��6   $��1��6%   $��2��62   $��2��6F   $��Center=�6W   $��Center=�6r   .+�5I      	� $��Binary��6�   & d� 	IsChecked& 6   �� $$ NumericSystem�' �� 	Converter#' [  )   #Calculator.Models.NumericSystemType(   BINARY) �� ConverterParameter#) Z( 6�   	� 5J      $��Octal��6�   & 6   �� $$ NumericSystem�#' [  *   OCTAL#) Z* 6�   	� 5K      $��Decimal��6�   & 6   �� $$ NumericSystem�#' [  +   DECIMAL#) Z+ 6�   	� 5L      $��Hexadecimal��6�   & 6   �� $$ NumericSystem�#' [  ,   HEXADECIMAL#) Z, 6�   5M      5O      5P      