   M S B A M L   `   `   `  ����F  BWPFAgencija, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFAgencijaWPFAgencija  5   	       WPFAvioKompanija.Klijent   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFAgencija     5   	     � Title$  Klijent��5   	   $	��450��6   $	��800��6&   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFF7A34D��6    � Offset$ 1Q�61   � 5      $ 	#FF85F9F3��6   $ 0.015Q�61   5      .+�5   
   �� -   5        $��Nazad��5   %   $��659,28,39,364q�65   ���	#FF0F43E4$��Arial Black)�6c   $��16(�6|    J� Opacity$	 0.5Q�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGrid��5         AutoGenerateColumns .  $��10,215,10,10q�6?   $��Arial Black)�6�   $��14(�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Ime Klijenta��6F   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Ime_klijenta+6\     5      $	 Prezime Klijenta��6J   $
 * 6d    6%   �� *Prezime_klijenta+6d     5      $	 Telefon��6J   $
 * 6[    6%   �� *Kontakt_klijenta+6[     5      $	 ID Klijenta��6E   $
 * 6Z    6%   �� *ID_klijenta+6Z   5      � 5   
   $
��Left=�6   $	��200��6*   $��	10,10,0,0q�67   $	��Top=�6J   $	��574��6b   .+�5      �� $��Ime Klijenta��6   $
��Left=�6+   $��10,0,0,0q�6F   $	��Top=�6X   $��20(�6p   
���   �$	��308��6�   $��Arial Black)�6�   �� 5      -   5        $��txtIme_klijenta��5      $
��Left=�6.   $��27��6I   $��	10,33,0,0q�6U    �� TextWrapping$
 Wrap=�6h   $	��Top=�6|   $	��234��6�   $��Arial Black)�6�   $��14(�6�   �� 5       -   5        $��Dodaj��5       $
��Left=�6%   $��
334,24,0,0q�6@   $	��Top=�6T   $	��100��6l   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5!        5"      5$      �� 5%      -   5        $��Obriši��5%      $
��Left=�6&   $��
334,80,0,0q�6A   $	��Top=�6U   $	��100��6m   $��30��6�   $��18(�6�   ���	#FF0F43E4$	 0.5Q�6�   $��Arial Black)�6�   
������� 5&        5'      5)      �� 5*      -   5        $��Izmeni��5*      $
��Left=�6&   $��334,137,0,0q�6A   $	��Top=�6V   $	��100��6n   $��33��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5+        5,      5.      �� 5/      -   5        $��txtPrezime_klijenta��5/      $
��Left=�61   $��	10,90,0,0q�6L   $
 Wrap=�6_   $	��Top=�6s   $	��234��6�   $��30��6�   $��Arial Black)�6�   $��14(�6�   �� 50      $��Prezime Klijenta��6   $
��Left=�6/   $��	10,59,0,0q�6J   $	��Top=�6]   $	��219��6u   $��31��6�   $��Arial Black)�6�   $��18(�6�   �� 51      $��Telefon��6   $
��Left=�6&   $��
10,123,0,0q�6A   $	��Top=�6U   $	��219��6m   $��Arial Black)�6y   $��18(�6�   �� 52      -   5        $��txtKontakt_klijenta��52      $
��Left=�61   $��
10,159,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��234��6�   $��31��6�   $��Arial Black)�6�   $��14(�6�   54      �� 55   
   -	   5        $��txtID_klijenta��55      $��Center=�6(   $y�Hidden=�6E   $��489,86,38,90q�6Y   $��47��6o   6|   56      57      