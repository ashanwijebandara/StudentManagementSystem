   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SM_System.ViewSM_System.View  5   	   !    SM_System.View.ModuleWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SM_System.View     5   	     � WindowStartupLocation$  CenterScreen=�5       � WindowStyle$
 None=�6?    � AllowsTransparency$
 True��6R   
������  � Title$ ModuleWindow��5   	   $	��500��6   $	��580��6+    � DataContext 5	      #   SM_System.View.ModuleWindowVM  5
   
    � 	Resources 5       �� 
TargetType   RoundedButtonStyle �� Property �� Value	 �� 
TargetType
 ��Name �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  CloseButton��%�  &	        &	 5    �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      "	 ��6&   .R�5      �� $
 border��6!   $ 10��61   ���#e67e22#��z��6X   #��z��6�   $
 true��6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver$
 true��6=   . �5   "   �� $ border��6?    � �� �#E2ca6S   �� 5   "   $ border��6@    � �� �#F1CA686T   5      P� 5       � ��$
 true��6;   . �5   "   �� $ border��6?    � ��
 �����6S   �� 5   "   $ border��6@    � ��
 �#�k�6T   5      5!      5#      5$      �� 5%   
   " ��6   .�5&      ��  � �� 5'      �� 5(      "	 ��6&   .R�5)      �� $
 border��6!   $ 10��61   ���#e74c3c#��z��6Y   #��z��6�   $
 true��6�   ._�5*      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5+       5,      P� 5-       �@��IsDefaulted$
 true��6=   . �5.   "   �� $ border��6@   # � ��6T    � ��5/      P� 50       �@J�IsMouseOver$
 true��6=   . �51   "   �� $ border��6?    � �� �#c0392b6S   �� 52   "   $ border��6@    � �� �#2434126T   53      P� 54       � ��$
 true��6;   . �55   "   �� $ border��6?    � ��
 �**��6S   �� 56   "   $ border��6@    � �� �#ff23546T   57      59      5;      5<      5?      .��5@      � ���#2980b9.+�5A   
   �� $��10q�6   .+�5B      �� $��10 30 10 10q�6    �� Orientation$ 
Horizontal=�6.   $	��430��6G   .+�5C      �� $��Id��6   $��20��6&   $��10q�61   $��DemiBold"�6=   �� 5D      $��Module Name��6   $	��120��6/   $��10q�6;   $��DemiBold"�6G   �� 5E      $��Module Code��6   $��10q�6/   $��80��6;   $��DemiBold"�6F   �� 5F      $��Module Credit��6   $��10q�61   $��80��6=   $��DemiBold"�6H   5G      �� 5H      $ 
Horizontal=�6   $��Center=�63   .+�5I      �� ���#63cdda$
��10 0q�6Y   $	��430��6g   $	��340��6s    �� SelectedItem 6   �� *Selectedmodule+��6�   �� *Viewmodules+ �� UpdateSourceTrigger$ PropertyChanged=���5J      �� 5K      .R�5L      �� $ 
Horizontal=�6)   $
��Left=�6B   $	��415��6]   .+�5M   "   �� $��20��6,   $��10q�67   ��6C   �� *Id+�� 5N   "   $	��120��6,   $��10q�68   ��6D   �� *
ModuleName+�� 5O   "   $��80��6,   $��10q�67   ��6C   �� *Code+�� 5P   "   $��80��6,   $��10q�67   ��6C   �� *Credit+5Q      5R      5T      5U      �� 5V      $ 
Horizontal=�6   $��Center=�62   .+�5W      �� $��Update��6   $��25��6R   $��70��6^   $��70 20 70 10q�6i   #��[  6~   ��6*   �� *UpdateModuleCommand+6~   �� 5X      $��Delete��6   $��25��6R   $��70��6^   $��10 20 70 10q�6i   #��[  6~   ��6*   �� *DeleteModuleCommand+6~   5Y      �� 5[      $��X��6   #��[ 6H   $��23��6n   $��25��6z   $��520 -880 2 10q�6�   ��6!   �� *CloseWindowCommand+6�   5\      5]      5^      