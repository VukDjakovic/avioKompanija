   M S B A M L   `   `   `  ����F  BWPFAgencija, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFAgencijaWPFAgencija  5   	       WPFAvioKompanija.Klasa   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFAgencija     5   	     � Title$  Klasa��5   	   $	��450��6   $	��800��6$   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFF7A34D��6    � Offset$ 1Q�61   � 5      $ 	#FF85F9F3��6   $ 0.015Q�61   5      .+�5   
   �� -   5        $��Nazad��5   %   $��659,28,39,364q�65   ���	#FF0F43E4$��Arial Black)�6c   $��16(�6|    J� Opacity$	 0.5Q�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGrid��5         AutoGenerateColumns .  $��10,215,10,10q�6?   $��Arial Black)�6�   $��14(�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Vrsta Klase��6E   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6Z   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Vrsta_klase+6Z     5      $	 Broj sedišta��6F   $
 * 6\    6%   �� *Broj_sedista+6\     5      $	 ID Klase��6B   $
 * 6T    6%   �� *
ID_klase+6T   5      � 5   
   $
��Left=�6   $	��200��6*   $��	10,10,0,0q�67   $	��Top=�6J   $	��644��6b   .+�5      �� $��Vrsta Klase��6   $
��Left=�6*   $��	10,31,0,0q�6E   $	��Top=�6X   $��20(�6p   
���   �$	��308��6�   $��Arial Black)�6�   �� 5      -   5        $��Dodaj��5      $
��Left=�6%   $��
308,26,0,0q�6@   $	��Top=�6T   $	��100��6l   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5        5       5"      �� 5#      -   5        $��Obriši��5#      $
��Left=�6&   $��
308,69,0,0q�6A   $	��Top=�6U   $	��100��6m   $��30��6�   $��18(�6�   ���	#FF0F43E4$	 0.5Q�6�   $��Arial Black)�6�   
������� 5$        5%      5'      �� 5(      -   5        $��Izmeni��5(      $
��Left=�6&   $��308,114,0,0q�6A   $	��Top=�6V   $	��100��6n   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5)        5*      5,      �� 5-      $��Izaberi Sedište��6   $
��Left=�6.   $��
10,114,0,0q�6I   $	��Top=�6]   $��20(�6u   
���   �$	��308��6�   $��Arial Black)�6�   �� 5.      -   5         ��Name$ txtBroj_sedista��5.      $
��Left=�6/   $��30��6J   $��
16,150,0,0q�6V    �� TextWrapping$
 Wrap=�6j   $	��Top=�6~   $	��165��6�   $��20(�6�   
���   �$��Arial Black)�6�   �� 5/      -   5         ��Name$ cbxVrsta_klase��5/      $
��Left=�6/   $��	16,69,0,0q�6J   $	��Top=�6]   $	��165��6u   $��30��6�   .@�50      �� $��Ekonomska klasa��6   �� 51      $��Biznis klasa��6   �� 52      $��
Prva klasa��6   53      54      �� 55   
   -   5        $ txtID_klase��55      $
��Left=�6'   $��696,159,0,0q�6B   $
 Wrap=�6W   $��TextBox��6k   $y�Hidden=�6z   $	��Top=�6�   $	��120��6�   56      57      