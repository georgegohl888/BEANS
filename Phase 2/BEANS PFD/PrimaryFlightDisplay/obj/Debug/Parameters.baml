   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   O KPrimaryFlightDisplay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PrimaryFlightDisplayPrimaryFlightDisplay 5   	   %   PrimaryFlightDisplay.Parameters   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   4local"clr-namespace:PrimaryFlightDisplay     5   	     � Title$  
Parameters��5	   	   $��215.278��6   $��569.444��6-      MainController � DataContext# [  6=    � 
ResizeMode$ NoResize=�6k    � ShowInTaskbar .  .��5
      � 
������� � ColumnDefinitions 5   
   �� 5      $
��115* �6   �� 5      $	��26* �6   .+�5   
   � $��4q�6   $��2��6    5      �� 5      $
��508* �6#   �� 5      $	��47* �6#   .+�5      �� $��2��6   .+�5      � $��4q�6    � RowDefinitions 5      �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(    5       �� 5!      $
��Auto �6+   �� 5"      $��1* �6+   �� 5#      $��96 �6+   .+�5%      �� $��0��6    $��0��6-   $��4q�6=   $��Pitch��6H   �� 5&      $��1��6    $��0��6-   $��4q�6=   $
��Roll��6H   �� 5'      $��2��6    $��0��6-   $��4q�6=   $��Altitude��6H   �� 5(      $��3��6    $��0��6-   $��4q�6=   $	��IAS��6H   �� 5)      $��4��6    $��0��6-   $��4q�6=   $��Heading��6H   �� 5+      $��0��6   $��1��6*   $��4q�6:   "  PrimaryFlightDisplay.Globals   PitchMin � Minimum# Z 6E      PitchMax	 � Maximum#	 Z 6q   
 � Value
 6�   �� *Pitch+�� 5,      $��1��6   $��1��6*   $��4q�6:      RollMin# Z 6E      RollMax#	 Z 6p   
 6�   �� *Roll+�� 5-      $��2��6   $��1��6*   $��4q�6:      AltitudeMin# Z 6E      AltitudeMax#	 Z 6t   
 6�   �� *
Altitude+�� 5.      $��3��6   $��1��6*   $��4q�6:      IASMin# Z 6E      IASMax#	 Z 6o   
 6�   �� *IAS+�� 5/      $��4��6   $��1��6*   $��4q�6:      
HeadingMin# Z 6E      
HeadingMax#	 Z 6s   
 6�   �� *	Heading+�� 51      $��0��6   $��2��6+   $��4q�6;    �� TextAlignment$ Center=�6F   ��6]   �� *Pitch+ �� UpdateSourceTrigger$ PropertyChanged=��� 52      $��1��6   $��2��6+   $��4q�6;   $ Center=�6F   ��6]   �� *Roll+$ PropertyChanged=��� 53      $��2��6   $��2��6+   $��4q�6;   $ Center=�6F   ��6]   �� *
Altitude+$ PropertyChanged=��� 54      $��3��6   $��2��6+   $��4q�6;   $ Center=�6F   ��6]   �� *IAS+$ PropertyChanged=��� 55      $��4��6   $��2��6+   $��4q�6;   $ Center=�6F   ��6]   �� *	Heading+$ PropertyChanged=�56      57      58      59      5:      