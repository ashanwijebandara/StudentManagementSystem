   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:SM_System.AddSM_System.Add  5   	   #    SM_System.Add.AddModuleWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:SM_System.Add     5   	     � WindowStartupLocation$  CenterScreen=�5       � WindowStyle$
 None=�6?    � AllowsTransparency$
 True��6R   
������  � Title$ AddModuleWindow��5   	   $	��450��6!   $	��580��6.    � DataContext 5	      %   SM_System.Add.AddModuleWindowVM  5
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
 border��6!   $ 10��61   ���#e74c3c#��z��6X   #��z��6�   $
 true��6�   ._�5*      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5+       5,      P� 5-       �@��IsDefaulted$
 true��6=   . �5.   "   �� $ border��6@   # � ��6T    � ��5/      P� 50       �@J�IsMouseOver$
 true��6=   . �51   "   �� $ border��6?    � �� �#c0392b6S   �� 52   "   $ border��6@    � �� �#2434126T   53      P� 54       � ��$
 true��6;   . �55   "   �� $ border��6?    � ��
 �**��6S   �� 56   "   $ border��6@    � �� �#ff23546T   57      59      5;      5<      5?      .��5@      � ���#2980b9.+�5A   
   �� $��X��6   #��[ 6D   $��23��6j   $��25��6v   $��520 -380 0 30q�6�   ��6   �� *CloseWindowCommand+6�   �� 5B   
   $��Center=�6   $��Center=�62   .+�5C      �� $��Module Name��6   $	��100��6+   $��5q�67   �� 5D      ���#48dbfb$	��100��6E   ��6+   �� *	ModName+6E   �� 5E      $��Module Code��6   $	��100��6+   $��5q�67   �� 5F      ���#48dbfb$	��100��6D   ��6+   �� *	ModCode+6D   �� 5G      $��Module Credit��6   $	��100��6-   $��5q�69   �� 5H      ���#48dbfb$	��100��6G   ��6+   �� *	ModCredit+6G   �� 5I      $
��Save��6   $��60��6$   $��10 40 10 10q�6/   #��[  6i   ��6D   �� *AddModuleCommand+6i   5K      5M      5N      