   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SM_System	SM_System  5   	       SM_System.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SM_System     5   	   ] YXceed.Wpf.Toolkit.NET5, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5	       � AllowsTransparency$
 True��6-   
������  � Title$ LoginWindow��5
   	   $	��450��6   $	��600��6*    � DataContext 5         SM_System.LoginWindowVM  5   
    � 	Resources 5       �� 
TargetType   RoundedButtonStyle �� Property �� Value	 �� 
TargetType
 ��Name �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  CloseButton��%�  &	        &	 5    �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      "	 ��6&   .R�5      �� $
 border��6!   $ 10��61   ���#e67e22#��z��6X   #��z��6�   $
 true��6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver$
 true��6=   . �5   "   �� $ border��6?    � �� �#E2ca6S   �� 5   "   $ border��6@    � �� �#F1CA686T   5      P� 5       � ��$
 true��6;   . �5   "   �� $ border��6?    � ��
 �����6S   �� 5    "   $ border��6@    � ��
 �#�k�6T   5!      5#      5%      5&      �� 5'   
   " ��6   .�5(      ��  � �� 5)      �� 5*      "	 ��6&   .R�5+      �� $
 border��6!   $ 10��61   ���#e74c3c#��z��6X   #��z��6�   $
 true��6�   ._�5,      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5-       5.      P� 5/       �@��IsDefaulted$
 true��6=   . �50   "   �� $ border��6@   # � ��6T    � ��51      P� 52       �@J�IsMouseOver$
 true��6=   . �53   "   �� $ border��6?    � �� �#c0392b6S   �� 54   "   $ border��6@    � �� �#2434126T   55      P� 56       � ��$
 true��6;   . �57   "   �� $ border��6?    � ��
 �**��6S   �� 58   "   $ border��6@    � �� �#ff23546T   59      5;      5=      5>      5A      .��5B      � ���#2980b9.+�5D   
   �� $��
0 260 0 50q�6   .+�5E      �� $��Login��66   $	��100��6F   $��10q�6R   #��[  6^   ��6   �� *LoginCommand+6^   �� 5F      -   5        $
��Back��5F      $	��100��69   $��10q�6E   #��[  6Q   5G      � 5H   
   $��Center=�6   .+�5R      �� $��1��6   $��Center=�6)    �� Orientation$ Vertical=�6F   $��0 170 0 180q�6]   .+�5U      (  "Xceed.Wpf.Toolkit.WatermarkTextBox     	Watermark$ Username��6(   $��0q�6W   ���#48dbfb$��25��5V   (   $	��100��64   $��0 0 0 15q�6@   ��5U   =   �� *
Username+5V   T     5W      $ Username��6(   $��25��6W   $	��100��6c   $��0q�6o   ���#48dbfb$Q��KC:\Users\wijeb\source\repos\SM_System\SM_System\Fonts\password.ttf#password)�5X      ��5W   =   �� *
Password+5X      5Z      5[      �� 5`   
   $��73��6   $	��100��6   $��130 -210 0 0q�6(   $��Center=�6>    J� RenderTransformOrigin$ 0.054,0.364&�6[   $��/image2rem.png��6   z�5a      V� 5b      .~�5c      ��  �� ScaleX$ -1Q�6%   �� 5d      �� 5e      T� 5f      5g      5i      �� 5j   
   $��X��6   #��[ 6D   
���  ��$
��Left=�6z   $��25��6�   $��
555 8 0 10q�6�   $	��Top=�6�   $��25��6�   ��6   �� *CloseWindowCommand+6�   5k      5l      