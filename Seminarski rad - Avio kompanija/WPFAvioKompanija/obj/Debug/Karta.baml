   M S B A M L   `   `   `  ����F  BWPFAgencija, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFAgencijaWPFAgencija  5   	       WPFAvioKompanija.Karta   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFAgencija     5   	     � Title$  Karta��5   	   $	��450��6   $	��800��6$   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFF7A34D��6    � Offset$ 1Q�61   � 5      $ 	#FF85F9F3��6   $ 0.015Q�61   5      .+�5   
   �� -   5        $��Nazad��5   %   $��659,28,39,364q�65   ���	#FF0F43E4$��Arial Black)�6c   $��16(�6|    J� Opacity$	 0.5Q�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGrid��5         AutoGenerateColumns .  $��10,215,10,10q�6?   $��Arial Black)�6�   $��14(�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$		 Ime��6F   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6S   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Ime_klijenta+6S     5      $	 Prezime��6J   $
 * 6[    6%   �� *Prezime_klijenta+6[     5      $	 Datum��6?   $
 * 6N    6%   �� *Datum+6N     5      $	 Klasa��6E   $
 * 6T    6%   �� *Vrsta_klase+6T     5      $	 Sedište��6F   $
 * 6W    6%   �� *Broj_sedista+6W     5      $
	 Grad��6>   $
 * 6L    6%   �� *Grad+6L     5      $	 Objekat��6G   $
 * 6X    6%   �� *Naziv_objekta+6X     5      $
	 Cena��6>   $
 * 6L    6%   �� *Cena+6L     5      $	 ID Karte��6B   $
 * 6T    6%   �� *
ID_karte+6T   5!      � 5"   
   $
��Left=�6   $	��200��6*   $��	10,10,0,0q�67   $	��Top=�6J   $	��574��6b   .+�5#      �� $��
Cena (eur)��6   $
��Left=�6)   $��	10,-5,0,0q�6D   $	��Top=�6W   $��18(�6o   
���   �$	��184��6�   $��Arial Black)�6�   $��34��6�   �� 5$      -   5        $��txtCena��5$      $
��Left=�6&   $��28��6A   $��	10,29,0,0q�6M    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��184��6�   $��Arial Black)�6�   $��14(�6�   �� 5%      -   5        $��Dodaj��5%      $
��Left=�6%   $��	474,4,0,0q�6@   $	��Top=�6S   $	��100��6k   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5&        5'      5)      �� 5*      -   5        $��Obriši��5*      $
��Left=�6&   $��
474,42,0,0q�6A   $	��Top=�6U   $	��100��6m   $��30��6�   $��18(�6�   ���	#FF0F43E4$	 0.5Q�6�   $��Arial Black)�6�   
������� 5+        5,      5.      �� 5/      -   5        $��Izmeni��5/      $
��Left=�6&   $��
474,80,0,0q�6A   $	��Top=�6U   $	��100��6m   $��33��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    50        51      53      �� 54      $��Datum��6   $
��Left=�6$   $��	10,57,0,0q�6?   $	��Top=�6R   $	��184��6j   $��Arial Black)�6v   $��18(�6�   �� 55      $��Objekat��6   $
��Left=�6&   $��
10,137,0,0q�6A   $	��Top=�6U   $	��188��6m   $��14(�6y   $��Arial Black)�6�   �� 56      -   5         ��Name$ lbxID_objekta��56      $
��Left=�6-   $��53��6H   $��
84,137,0,0q�6T   $	��Top=�6h   $	��110��6�   6�   �� 57      -   5         ��Name$ cbxID_klijenta��57      $
��Left=�6/   $��
258,42,0,0q�6J   $	��Top=�6^   $	��188��6v   6�   �� 58      $��Klijent��6   $
��Left=�6&   $��	258,6,0,0q�6A   $	��Top=�6T   $	��188��6l   $��18(�6x   $��Arial Black)�6�   (  "System.Windows.Controls.DatePicker  59      -	   5          Name$ dtDatum��59      $
��Left=�6*   $	��Top=�6E   $��
20,100,0,0q�6]   $	��189��6q   �� 5:      -
   5        $��txtID_karte��5:      $��Center=�6)   $y�Hidden=�6F   $��489,86,38,90q�6Z   $��47��6p   6}   �� 5;      -   5        $ cbxID_klase��5;      $
��Left=�6,   $��258,100,0,0q�6G   $	��Top=�6\   $	��188��6t   6�   �� 5<      $��Sedište��6   $
��Left=�6&   $��
258,70,0,0q�6A   $	��Top=�6U   $	��188��6m   $��18(�6y   $��Arial Black)�6�   5=      5>      5?      