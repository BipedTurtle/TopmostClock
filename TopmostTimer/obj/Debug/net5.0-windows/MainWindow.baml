   M S B A M L   `   `   `  ����G  CTopmostTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TopmostTimerTopmostTimer  5   	       TopmostTimer.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:TopmostTimer     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
MainWindow��5	   	   $	��200��5
   	   $	��300��6   $	��500��5   	   $	��600��6    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � Topmost$
 True��5   	    � Cursor$
 Hand��5   	    � 	Resources 5       �� 
TargetType	 �� Property
 �� Value��%T   '��       �� 5   
   " ��6   .�5      �� 	 � ��

 �����6+   5      5      .��5      � $
}�True��6    � RowDefinitions 5   
   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ toolbarTrigger��5      
������ $��30��5!      $	��Top=�5"      $��1��5#       K� ZIndex$ 1��5$       � Triggers 5%      :� 5&       :� RoutedEvent$ 
MouseEnter��6   .[�5'      �� .��5(      �� .��5)      W�  �� 
TargetName$ toolBar��6.    �� TargetProperty$, &RenderTransform.(TranslateTransform.Y)�5*   .   	 W� To 05+   .    g� Duration$ 0:0:0.2D�65   5,      5-      5.      50      � 53   
   -   5         �Name$ toolBar��53      $��30��54      $	��Top=�55      $ 2��56      z�57      T� 58      -   5        toolbarTransform�� T� Y$	 -30Q�59   %    5;      :� 5<      $ 
MouseLeave��6   .[�5=      �� .��5>      �� .��5?      W� $ toolBar��6.   $, &RenderTransform.(TranslateTransform.Y)�5@   .    -305A   .   $ 0:0:0.2D�67   5B      5C      5D      .+�5G      ��     MaterialDesignDarkBackground#��[  6   �� 5H       �� Orientation$ 
Horizontal=�6   $��Right=�5I      .+�5J      �� -   5        $	��5 0q�5J      ���	#FF6C6C6C���	#FF6C6C6C.��5N      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Minus=�6"   $��25��5O   %   $��25��60   5P      �� 5Q      -   5        $	��5 0q�5Q      ���	#FF3972A0���	#FF3972A0.��5U        $ Resize=�6"   $��25��5V   %   $��25��60   5W      �� 5X      -   5        $	��5 0q�5X      ���	#FF983B3B���	#FF983B3B.��5\        $ Close=�6"   $��25��5]   %   $��25��60   5^      5_      5`      � 5b   
   $��1��6   $ 0��5c      .+�5d      �� 
������� J� Opacity$	 .02Q�5e      �� 5f      
������ $��1��5g      ._�5h      (� .��5i      �� $��1��5j       $��60(�5k       ���	#FFB8B8B8$��Stretch=�5m       $��Stretch=�6>   ��5i   .   �� *Time+ �� StringFormat$ {0:h:mm:ss tt}��5m   >   5n      5o      5p      5q      5r      