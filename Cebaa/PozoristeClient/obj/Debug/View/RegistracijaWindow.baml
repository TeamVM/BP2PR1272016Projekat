   M S B A M L   `   `   `  ����J  FPozoristeClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:PozoristeClientPozoristeClient  5   	   (    "PozoristeClient.RegistracijaWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9i+http://schemas.microsoft.com/xaml/behaviors     5   	   /localclr-namespace:PozoristeClient     5   	   Fi19http://schemas.microsoft.com/netfx/2009/xaml/presentation    65     � Title$  RegistracijaWindow��5
   	   $	��450��6$   $	��400��61    � 
ResizeMode$ NoResize=�6=   .��5      � .+�5   
   �� $��Email:��6   $
��Left=�6!   $��
170,73,0,0q�6<   $	��Top=�6P   $	��100��6h   $
��Bold"�6t   �� 5   
   -   5        $��EmailTextBox��5   �   $
��Left=�6   $��23��6-   $��100,100,0,0q�69    �� TextWrapping$
 Wrap=�6N   $	��Top=�6y   $	��200��6�   ��6b   �� *Email+6�   �� 5   
   $��Sifra:��6   $
��Left=�6!   $��170,133,0,0q�6<   $	��Top=�6Q   $	��100��6i   $
��Bold"�6u   �� 5   
   -   5        $��SifraTextBox��5   �   $
��Left=�6   $��23��6-   $��100,160,0,0q�69   $
 Wrap=�6N   $	��Top=�6y   $	��200��6�   ��6b   �� *Sifra+6�   �� 5   
   $��Uloga:��6   $
��Left=�6!   $��170,193,0,0q�6<   $	��Top=�6Q   $	��100��6i   $
��Bold"�6u   �� 5   
   $	��200��6   $ �� IsSynchronizedWithCurrentItem$
 TrueY�6    $��2��6�   $��100 220 0 0q�6�   $
��Left=�6�   $	��Top=�6�   ��6E   �� *Role+ �� SelectedItem 6b   �� *Rola+��5   
   �� 5      .R�5      �� ��5      `� 5       �� StringFormat$	 {0}��6'   .1�5      ��  �� Path$ Value�6&   5      5      5      5      �� 5    
   $��Registruj se��6   $
��Left=�6(   $��100,315,0,0q�6C   $	��Top=�6X   $	��200��6p   $��40��6|   ��6�   �� *RegistrujCommand+5!      5"      