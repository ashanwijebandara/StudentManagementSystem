   M S B A M L   `   `   `  ����D  @SM_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SM_System.ControlsSM_System.Controls  5   	   &     SM_System.Controls.ControlWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:SM_System.Controls     5   	   ^ ZMahApps.Metro.IconPacks, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137am iMahApps.Metro.IconPacks.BootstrapIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.BoxIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Codicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ah
 dMahApps.Metro.IconPacks.Coolicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ac _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ae aMahApps.Metro.IconPacks.Entypo, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.EvaIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ak gMahApps.Metro.IconPacks.FeatherIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ah dMahApps.Metro.IconPacks.FileIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ah dMahApps.Metro.IconPacks.Fontaudio, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137aj fMahApps.Metro.IconPacks.FontAwesome, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Fontisto, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137aj fMahApps.Metro.IconPacks.ForkAwesome, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Ionicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.JamIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137am iMahApps.Metro.IconPacks.MaterialDesign, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137al hMahApps.Metro.IconPacks.MaterialLight, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137af bMahApps.Metro.IconPacks.Microns, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ae aMahApps.Metro.IconPacks.Modern, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Octicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ai eMahApps.Metro.IconPacks.PicolIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137al hMahApps.Metro.IconPacks.PixelartIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ai eMahApps.Metro.IconPacks.RadixIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ah dMahApps.Metro.IconPacks.RemixIcon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ai  eMahApps.Metro.IconPacks.RPGAwesome, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137aj! fMahApps.Metro.IconPacks.SimpleIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag" cMahApps.Metro.IconPacks.Typicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137af# bMahApps.Metro.IconPacks.Unicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137aj$ fMahApps.Metro.IconPacks.VaadinIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ak% gMahApps.Metro.IconPacks.WeatherIcons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ah& dMahApps.Metro.IconPacks.Zondicons, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a}	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks!    	 
                        ! " # $ % & 5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � WindowStyle$
 None=�6.    � AllowsTransparency$
 True��6A   
������ $	��450��5
   !   $	��580��6.    � Title 6	   �� *Title+ � 	Resources 5         AdminVisible �� 
TargetType  RoundedButtonStyle �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  LogOutButton��%�  &	        &	      &	 G    �� 5   
   6'   �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $	 border��6!   $
 5��61   ���#ff9f43#��z��6W   #��z��6�   $
 true��6�   ._�5      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted$
 true��6=   . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver$
 true��6=   . �5   "   �� $ border��6?    � �� �#E2ca6S   �� 5   "   $ border��6@    � �� �#F1CA686T   5      P� 5       � ��$
 true��6;   . �5    "   �� $ border��6?    � ��
 �����6S   �� 5!   "   $ border��6@    � ��
 �#�k�6T   5"      5$      5&      5'      �� 5(   
   " ��6   .�5)      ��  � �� 5*      �� 5+      " ��6&   .R�5,      �� $	 border��6!   $
 5��61   ���#0abde3#��z��6W   #��z��6�   $
 true��6�   ._�5-      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5.       5/      P� 50       �@��IsDefaulted$
 true��6=   . �51   "   �� $ border��6@   # � ��6T    � ��52      P� 53       �@J�IsMouseOver$
 true��6=   . �54   "   �� $ border��6?    � �� �#2980b96S   �� 55   "   $ border��6@    � �� �	#F132145f6T   56      P� 57       � ��$
 true��6;   . �58   "   �� $ border��6?    � �� �#e74c3c6S   �� 59   "   $ border��6@    � �� �	#968754336T   5:      5<      5>      5?      5A      .��5C      � ���#2e86de.+�5D   
   �� $	��540��6   
������ $��0q�6:    �� TabStripPlacement$
 Left=�6N   $��Center=�6g   $	��287��6�   $��	30,0,30,0q�6�   .@�5E      �� ���#ee5253$	��175��6+   $��5q�67   
������ $��25��6e   $��Center=�6q   $
��Home��6�   .��5F      �� $��Center=�6    �� Orientation$ Vertical=�6:   $��Center=�6Q   .+�5I      �� $	��100��6   $��50��6)   
����iA�._�5J      �  � ColumnDefinitions 5K      �� 5L   "   $
��0.8* �63   �� 5M   "   $��1* �63   .+�5O      � .+�5P   "   1  +MahApps.Metro.IconPacks.PackIconFontAwesome  
�������$��25��6T   $��25��6_      Kind$ UserGraduateSolid=�6l   $��Center=�6�   $��Center=�6�   5Q      � 5R      $��1��6#   $��0 0 5 0q�63    � RowDefinitions 5T   "   �� 5U   &   $��* �64   6A   �� 5V   &   $��* �64   6A   .+�5[   "   �� $��0��6)   ._�5\   &   �� 
�������$��20(�6b   $
��Bold"�6p   $��Center=�6�   ��6C   �� *TotalStudents+6�   5]   #   �� 5^   "   $��1��6)   ._�5_   &   �� 
�������$��10(�6D   $��Center=�6R   $
��Bold"�6n   $��Center=�6�   
STUDENTS6�   5a   #   5e      5g      5h      �� 5i      $	��100��6   $��50��6)   $��0 10 0 0q�65   
����iA�._�5j      �  5k      �� 5l   "   $
��0.8* �63   �� 5m   "   $��1* �63   .+�5o      � .+�5p   "     
�������$��25��6T   $��25��6_   $ UserCogSolid=�6l   $��Center=�6�   $��Center=�6�   5q      � 5r      $��1��6#   $��0 0 5 0q�63    5t   "   �� 5u   &   $��* �64   6A   �� 5v   &   $��* �64   6A   .+�5{   "   �� $��0��6)   ._�5|   &   �� 
�������$��20(�6`   $
��Bold"�6n   $��Center=�6�   ��6C   �� *TotalAdmins+6�   5}   #   �� 5~   "   $��1��6)   ._�5   &   �� 
�������$��10(�6D   $��Center=�6R   $
��Bold"�6n   $��Center=�6�   ADMINS6�   5�   #   5�      5�      5�      �� 5�      $	��100��6   $��50��6)   $��0 10 0 0q�65   
����iA�._�5�      �  5�      �� 5�   "   $
��0.8* �63   �� 5�   "   $��1* �63   .+�5�      � .+�5�   "     
�������$��25��6T   $��25��6_   $ 	UserSolid=�6l   $��Center=�6}   $��Center=�6�   5�      � 5�      $��1��6#   $��0 0 5 0q�63    5�   "   �� 5�   &   $��* �64   6A   �� 5�   &   $��* �64   6A   .+�5�   "   �� $��0��6)   ._�5�   &   �� 
�������$��20(�6_   $
��Bold"�6m   $��Center=�6   ��6C   �� *
TotalUsers+6�   5�   #   �� 5�   "   $��1��6)   ._�5�   &   �� 
�������$��10(�6D   $��Center=�6R   $
��Bold"�6n   $��Center=�6�   USERS6�   5�   #   5�      5�      5�      �� 5�      $	��100��6   $��50��6)   $��0 10 0 0q�65   
����iA�._�5�      �  5�      �� 5�   "   $
��0.8* �63   �� 5�   "   $��1* �63   .+�5�      � .+�5�   "   .  (MahApps.Metro.IconPacks.PackIconEvaIcons     Kind$
 Book=�6=   
�������$��25��6]   $��25��6h   $��Center=�6v   $��Center=�6�   5�      � 5�      $��1��6#   $��0 0 5 0q�63    5�   "   �� 5�   &   $��* �64   6A   �� 5�   &   $��* �64   6A   .+�5�   "   �� $��0��6)   ._�5�   &   �� 
�������$��20(�6a   $
��Bold"�6o   $��Center=�6�   ��6C   �� *TotalModules+6�   5�   #   �� 5�   "   $��1��6)   ._�5�   &   �� 
�������$��10(�6D   $��Center=�6R   $
��Bold"�6n   $��Center=�6�   	MODULES6�   5�   #   5�      5�      5�      5�      5�      �� 5�      $	��175��6   $��5q�6"   
������ $��25��6P   ���#ee5253$��Center=�6r   $��Student��6�   .��5�      �� $��Center=�6   $ Vertical=�6:   $��Center=�6Q   .+�5�      �� $��Add Student��6   $��10 40 10 10q�6Y   $	��120��6n   $��25��6z   #��[ 6�   ��63   �� *AddStudentCommand+6�   �� 5�      $��Update Student��6   $��10q�6]   $	��120��6i   $��25��6u   #��[ 6�   ��66   �� *ViewStudentCommand+6�   �� 5�      $��Student List��6   $��10q�6[   $	��120��6g   $��25��6s   #��[ 6   ��64   �� *ViewStudentCommand+6   �� 5�      $��Remove Student��6   $��10q�6]   $	��120��6i   $��25��6u   #��[ 6�   ��66   �� *ViewStudentCommand+6�   �� 5�      $2��,As a user only you can 
      CRUD Students��6b    J� RenderTransformOrigin$ 0.449,1.497&�6�   $��10 10q�6�   y�6   �� *IsUser+ �� 	Converter# [  6�   5�      5�      �� 5�      $��25��6   $��5q�6"   
������ ���#ee5253$	��175��6�   $��Center=�6�   $��Users��6�   y�6e   �� *	IsAdmin+# [  .��5�      �� $��Center=�6   $ Vertical=�6:   $��Center=�6Q   .+�5�      �� $��Add User��6   $��25��6S   $��10 40 10 10q�6_   $	��120��6t   #��[ 6�   ��60   �� *AddUserCommand+6�   �� 5�      $��Update User��6   $��25��6W   $��10q�6c   $	��120��6o   #��[ 6{   ��63   �� *ViewUserCommand+6{   �� 5�      $��	User List��6   $��25��6U   $��10q�6a   $	��120��6m   #��[ 6y   ��61   �� *ViewUserCommand+6y   �� 5�      $��Remove User��6   $��25��6W   $��10q�6c   $	��120��6o   #��[ 6{   ��63   �� *ViewUserCommand+6{   5�      5�      �� 5�      $��25��6   $��5q�6"   
������ ���#ee5253$	��175��6�   $��Center=�6�   $��Modules��6�   y�6e   �� *	IsAdmin+# [  .��5�      �� $��Center=�6   $ Vertical=�6:   $��Center=�6Q   .+�5�      �� $��
Add Module��6   $��25��6W   $��10 40 10 10q�6c   $	��120��6x   #��[ 6�   ��62   �� *AddModuleCommand+6�   �� 5�      $��Update Module��6   $��25��6[   $��10q�6g   $	��120��6s   #��[ 6   ��65   �� *ViewModuleCommand+6   �� 5�      $��Module List��6   $��25��6Y   $��10q�6e   $	��120��6q   #��[ 6}   ��63   �� *ViewModuleCommand+6}   �� 5�      $��Remove Module��6   $��25��6[   $��10q�6g   $	��120��6s   #��[ 6   ��65   �� *ViewModuleCommand+6   5�      5�      5�      �� 5�   
   $��Log Out��6   #��[ 6#   $
��Left=�6k   $��25��6�   $��	500,7,0,0q�6�   $	��Top=�6�   $��62��6�   ��6I   �� *LogoutCommand+6�   5�      5�      