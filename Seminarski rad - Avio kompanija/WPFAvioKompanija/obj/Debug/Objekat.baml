   M S B A M L   `   `   `  ����F  BWPFAgencija, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFAgencijaWPFAgencija  5   	       WPFAvioKompanija.Objekat   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFAgencija     5   	     � Title$  Objekat��5   	   $	��450��6   $	��800��6&   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFF7A34D��6    � Offset$ 1Q�61   � 5      $ 	#FF85F9F3��6   $ 0.015Q�61   5      .+�5   
   �� -   5        $��Nazad��5   %   $��659,28,39,364q�65   ���	#FF0F43E4$��Arial Black)�6c   $��16(�6|    J� Opacity$	 0.5Q�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGrid��5         AutoGenerateColumns .  $��10,215,10,10q�6?   $��Arial Black)�6�   $��14(�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Vrsta Objekta��6G   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Vrsta_objekta+6^     5      $	 Naziv Objekta��6G   $
 * 6^    6%   �� *Naziv_objekta+6^     5      $	 Kontakt��6I   $
 * 6Z    6%   �� *Kontakt_objekta+6Z     5      $	 Destinacija��6>   $
 * 6S    6%   �� *Grad+6S     5      $	 
ID Objekta��6D   $
 * 6X    6%   �� *
ID_objekta+6X   5      � 5   
   $
��Left=�6   $	��200��6*   $��	10,10,0,0q�67   $	��Top=�6J   $	��574��6b   .+�5      �� $��Vrsta Objekta��6   $
��Left=�6,   $��10,0,0,0q�6G   $	��Top=�6Y   $��18(�6q   
���   �$	��308��6�   $��Arial Black)�6�   $��34��6�   �� 5       -   5        $��txtVrsta_objekta��5       $
��Left=�6/   $��28��6J   $��	10,29,0,0q�6V    �� TextWrapping$
 Wrap=�6i   $	��Top=�6}   $	��234��6�   $��Arial Black)�6�   $��14(�6�   �� 5!      -   5        $��Dodaj��5!      $
��Left=�6%   $��
455,22,0,0q�6@   $	��Top=�6T   $	��100��6l   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5"        5#      5%      �� 5&      -   5        $��Obriši��5&      $
��Left=�6&   $��
455,81,0,0q�6A   $	��Top=�6U   $	��100��6m   $��30��6�   $��18(�6�   ���	#FF0F43E4$	 0.5Q�6�   $��Arial Black)�6�   
������� 5'        5(      5*      �� 5+      -   5        $��Izmeni��5+      $
��Left=�6&   $��455,138,0,0q�6A   $	��Top=�6V   $	��100��6n   $��32��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5,        5-      5/      �� 50      $��Naziv��6   $
��Left=�6$   $��	10,57,0,0q�6?   $	��Top=�6R   $	��277��6j   $��Arial Black)�6v   $��18(�6�   �� 51      -   5        $��txtNaziv��51      $
��Left=�6&   $��	10,88,0,0q�6A   $
 Wrap=�6T   $	��Top=�6h   $	��234��6�   $��29��6�   �� 52      $��Kontakt��6   $
��Left=�6&   $��
10,122,0,0q�6A   $	��Top=�6U   $��31��6m   $	��277��6y   $��Arial Black)�6�   $��18(�6�   �� 53      -   5        $��
txtKontakt��53      $
��Left=�6(   $��
10,153,0,0q�6C   $
 Wrap=�6W   $	��Top=�6k   $	��234��6�   $��26��6�   �� 54      $��Destinacija��6   $
��Left=�6*   $��	266,0,0,0q�6E   $	��Top=�6X   $��18(�6p   
���   �$	��308��6�   $��Arial Black)�6�   $��34��6�   �� 55      -	   5         ��Name$ cbxID_destinacije��55      $
��Left=�62   $��23��6M   $��
266,29,0,0q�6Y   $	��Top=�6m   $	��131��6�   6�   56      �� 57   
   -
   5        $��txtID_objekta��57      $��Center=�6'   $y�Hidden=�6D   $��489,86,38,90q�6X   $��47��6n   6{   58      59      