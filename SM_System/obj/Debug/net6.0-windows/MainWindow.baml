   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SM_System	SM_System  5   	       SM_System.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SM_System     5   	     � WindowStyle$
  None=�6/    � AllowsTransparency$
 True��6B   
������  � WindowStartupLocation$ CenterScreen=�5       � Title$ 
MainWindow��5   	   $	��450��6   $	��600��6)    � 	Resources 5	       �� 
TargetType   RoundedButtonStyle �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  CloseButton��%�  &	        &	 5    �� 5
   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $	 border��6!   $
 18��61   ���#54a0ff#��z��6X   #��z��6�   $
 true��6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver$
 true��6=   . �5   "   �� $ border��6?    � �� �#E2ca6S   �� 5   "   $ border��6@    � �� �#F1CA686T   5      P� 5       � ��$
 true��6;   . �5   "   �� $ border��6?    � ��
 �����6S   �� 5   "   $ border��6@    � ��
 �#�k�6T   5      5      5       5!      �� 5"   
   " ��6   .�5#      ��  � �� 5$      �� 5%      " ��6&   .R�5&      �� $	 border��6!   $
 10��61   ���#e74c3c#��z��6X   #��z��6�   $
 true��6�   ._�5'      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5(       5)      P� 5*       �@��IsDefaulted$
 true��6=   . �5+   "   �� $ border��6@   # � ��6T    � ��5,      P� 5-       �@J�IsMouseOver$
 true��6=   . �5.   "   �� $ border��6?    � �� �#c0392b6S   �� 5/   "   $ border��6@    � �� �#2434126T   50      P� 51       � ��$
 true��6;   . �52   "   �� $ border��6?    � ��
 �**��6S   �� 53   "   $ border��6@    � �� �#ff23546T   54      56      58      59      5;       � DataContext 5<         SM_System.MainWindowVM  5=   
   .��5?      � ���#2980b9.+�5A   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   $��	0 350 0 0q�6K   .+�5I      �� $��Admin��6   $��15(�6&   $��
ExtraBlack"�65   $��Center=�6s   $	��Top=�6�   $��0 0 50 0q�6�   $��35��6�   $	��130��6�   #��[  6�   ��6M   �� *AdminLoginCommand+6�   �� 5J      $
��User��6   $��15(�6$   $��
ExtraBlack"�63   $��Center=�6p   $	��Top=�6�   $��35��6�   $	��130��6�   #��[  6�   ��6K   �� *UserLoginCommand+6�   5K      �� 5M   
   $ Vertical=�6   $	��Top=�6,   $	��340��6D   $��40 20 40 40q�6Q   .+�5N      �� $��70��6   $��/image1.png��6"   $	��150��67   z�5O      V� 5P      .~�5Q      ��  �� ScaleX$ 1Q�6)   �� 5R      �� 5S      T� 5T      5U      5W      �� 5X      $��STUDENT��6   $��50(�6'   $��Heavy"�65   $��Center=�6I   $��0 10 0 0q�6f   $��80��6y   $	��240��6�   �� 5Y      $��
MANAGEMENT��6   $��50(�6*   $��Heavy"�68   $��Center=�6K   $��80��6j   $	��380��6v   �� 5Z      $��SYSTEM��6   $��50(�6&   $��Heavy"�64   $��Center=�6G   $��80��6f   $	��200��6r   5\      �� 5]   
   $��X��6   #��[ 6B   $��23��6g   $��25��6s   $��550 -380 10 35q�6~   ��6   �� *CloseMainCommand+6~   5^      5_      