   M S B A M L   `   `   `  ����F  BWPFAgencija, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFAgencijaWPFAgencija  5   	   "    WPFAvioKompanija.Destinacija   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFAgencija     5   	     � Title$  Destinacija��5   	   $	��450��6   $	��800��6*   .��5	      � ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      �  � Color$ 	#FFF7A34D��6    � Offset$ 1Q�61   � 5      $ 	#FF85F9F3��6   $ 0.015Q�61   5      .+�5   
   �� -   5        $��Nazad��5   %   $��659,28,39,364q�65   ���	#FF0F43E4$��Arial Black)�6c   $��16(�6|    J� Opacity$	 0.5Q�6�   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��DataGrid��5         AutoGenerateColumns .  $��10,215,10,10q�6?   $��Arial Black)�6�   $��14(�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Država��6@   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6P   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Drzava+6P     5      $
	 Grad��6>   $
 * 6L    6%   �� *Grad+6L     5      $	 ID Destinacije��6H   $
 * 6`    6%   �� *ID_destinacije+6`   5      � 5   
   $
��Left=�6   $	��200��6*   $��	10,10,0,0q�67   $	��Top=�6J   $	��574��6b   .+�5      �� $��Država��6   $
��Left=�6%   $��	21,16,0,0q�6@   $	��Top=�6S   $��20(�6k   
���   �$	��308��6�   $��Arial Black)�6�   �� 5      -   5        $��	txtDrzava��5      $
��Left=�6(   $��38��6C   $��	21,54,0,0q�6O    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $	��234��6�   $��Arial Black)�6�   $��14(�6�   �� 5      -   5        $��Dodaj��5      $
��Left=�6%   $��
334,24,0,0q�6@   $	��Top=�6T   $	��100��6l   $��30��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5         5!      5#      �� 5$      -   5        $��Obriši��5$      $
��Left=�6&   $��
334,80,0,0q�6A   $	��Top=�6U   $	��100��6m   $��30��6�   $��18(�6�   ���	#FF0F43E4$	 0.5Q�6�   $��Arial Black)�6�   
������� 5%        5&      5(      �� 5)      -   5        $��Izmeni��5)      $
��Left=�6&   $��334,137,0,0q�6A   $	��Top=�6V   $	��100��6n   $��33��6�   $��18(�6�   ���	#FF0F43E4
�������$��Arial Black)�6�   $	 0.5Q�6�    5*        5+      5-      �� 5.      $
��Grad��6   $
��Left=�6#   $��
21,109,0,0q�6>   $	��Top=�6R   $��20(�6j   
���   �$	��308��6�   $��Arial Black)�6�   �� 5/      -   5         ��Name$ txtGrad��5/      $
��Left=�6(   $��38��6C   $��
21,147,0,0q�6O   $
 Wrap=�6c   $	��Top=�6w   $	��234��6�   $��Arial Black)�6�   $��14(�6�   51      �� 52   
   -   5        $��txtID_destinacije��52      $��Center=�6+   $y�Hidden=�6H   $��489,86,38,90q�6\   $��47��6r   6   53      54      