   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SM_System.ViewSM_System.View  5   	       SM_System.View.UserWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SM_System.View     5   	     � WindowStartupLocation$  CenterScreen=�5       � WindowStyle$
 None=�6?    � AllowsTransparency$
 True��6R   
������  � Title$ 
UserWindow��5   	   $	��450��6   $	��580��6)    � DataContext 5	      !   SM_System.View.UserWindowVM  5
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
 �**��6S   �� 56   "   $ border��6@    � �� �#ff23546T   57      59      5;      5<      5>      .��5?      � ���#2980b9.+�5@   
   �� .+�5A      �� $��X��6   #��[ 6H   $��23��6n   $��25��6z   $��	528 8 0 0q�6�   ��6!   �� *CloseWindowCommand+6�   �� 5B       �� Orientation$ 
Horizontal=�6   $	��300��62   $��	0 10 0 10q�6>   $��Center=�6Q   .+�5C      �� $��ID��6   $��50��6&   $��10q�61   $��DemiBold"�6=   �� 5D      $��	User Name��6   $��80��6-   $��10q�68   $��DemiBold"�6D   �� 5E      $
��Type��6   $��60��6(   $��16 10 10 10q�63   $��DemiBold"�6H   5F      �� 5G      $ 
Horizontal=�6   $��Center=�62   .+�5H      �� ���#63cdda$	��300��6V   $	��300��6b   $��	10 0 10 0q�6o   $
��Left=�6�    �� SelectedItem 60   �� *SelectedUser+��6�   �� *	ViewUsers+ �� UpdateSourceTrigger$ PropertyChanged=���5I      �� 5J      .R�5K      �� $ 
Horizontal=�6)   $
��Left=�6B   $	��285��6]   .+�5L   "   �� $��50��6,   $��10q�67   ��6C   �� *Id+�� 5M   "   $��80��6,   $��10q�67   ��6C   �� *
UserName+�� 5N   "   $��60��6,   $��10q�67   ��6C   �� *Type+5O      5P      5R      5S      �� 5T      $ 
Horizontal=�6   $��Center=�62   .+�5U      �� $��Update��6   $��80��6P   $��30 10q�6[   #��[  6j   ��6*   �� *UpdateUserCommand+6j   �� 5V      $��Delete��6   $��80��6P   $��30 10q�6[   #��[  6j   ��6*   �� *DeleteUserCommand+6j   5W      5X      5Y      5Z      