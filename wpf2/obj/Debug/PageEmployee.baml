   M S B A M L   `   `   `  ����?  ;wpf2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:wpf2wpf2  5      -clr-namespace:wpf2.Commandswpf2.Commands  5      )clr-namespace:wpf2.Modelswpf2.Models  5      ;"clr-namespace:wpf2.ValidationRuleswpf2.ValidationRules  5	          wpf2.PageEmployee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      $localclr-namespace:wpf2     5      /commandclr-namespace:wpf2.Commands     5      *coreclr-namespace:wpf2.Models     5      3rule"clr-namespace:wpf2.ValidationRules     5	      -   5          N� Title$  PageEmployee��5       � 	Resources 5         DatеTemplate �� StringFormat  EditingDateTemplate(  "System.Windows.Controls.DatePicker   SelectedDate �� Mode �� UpdateSourceTrigger  
errorStyle �� 
TargetType �� Property �� Value��%�  &	        &	 �     &	     �� 5   
   .R�5      �� $��Center=�5      $��Center=�6/   ��5      �� *	BirstDate+$ {0:dd.}{0:MM.}{0:yyyy}��5   N   5      �� 5   
   .R�5         6   �� *	BirstDate+$ TwoWay=�$ PropertyChanged=�6r   5      �� 5   
   " ��6#   .�5      ��  � ��
 �  ��6,   �� 5       � ��$ 2q�60   5      5      	 J� CommandBindings	 5      )  #System.Windows.Input.CommandBinding  5   
   -   5            wpf2.Commands.DataCommands
   Edit   Command# Z
 5      5"        5#   
   -   5           Delete# Z 5#      5&        5'   
   -   5        $
 Undo��5'      5)        5*   
   -   5        $
 Save��5*      5,        5-   
   -   5        $
 Find��5-      5/        50   
   -   5        $	 New��50      52        53      -   5        $ Refresh��53      6)   .��56      �� $��3q�6     BackgroundWindowResource#��[ 6   .+�57   
   o� .@�58      m� $��Действие��6   .@�59      m� $��Отменить��6   60   �� 5:      6   m� 5;      $��Создать��6   6/   m� 5<      $ ��Редактировать��6    m� Command$ command:DataCommands.Edit��62   6X   m� 5=      $��Сохранить��6   61   m� 5>      $��
Найти��6   6-   �� 5?      6   m� 5@      $��Удалить��6   $! command:DataCommands.Delete��6,   6T   5A      m� 5B      $��
Отчет��6   6(   5C      c� 5D   
   -	   5        $��Toolbar1��5D      $��3q�6"   .@�5E      �� -
   5        $
��Undo��5E      $
��Undo��6!    � ToolTip$D >Отменить редактирование/создание��60   $��5,2,5,2q�6[   .��5F      �� $��Images/Undo_16x.png��6   5G      �� 5H      -   5        $	��Add��5H      $	��New��6    $8 2Добавить нового сотрудника��6.   $��5,2,5,2q�6S   .��5I      �� $��Images/Add.png��6   5J      �� 5K      -   5        $
��Edit��5K      $��command:DataCommands.Edit��6!   $G AРедактировать данные по сотруднику��6E   $��5,2,5,2q�6r   .��5L      �� $��Images/Edit.png��6   5M      �� 5N      -   5        $
��Find��5N      $
��Find��6!   $% Поиск сотрудника��60   $��5,2,5,2q�6K   .��5O      �� $��Images/Find.png��6   5P      �� 5Q      -   5        $
��Save��5Q      $
��Save��6!   $ Сохранить��60   $��5,2,5,2q�6D   .��5R      �� $��Images/Save.png��6   5S      �� 5T      -   5        $��Delete��5T      $!��command:DataCommands.Delete��6#   $ Удалить��6I   $��5,2,5,2q�6[   .��5U      �� $��Images/Delete.png��6   5V      5W      �� 5X   
   $��5q�6   %#Список сотрудников63   &   System.Windows.Controls.DataGrid  5Y   
   -   5        $��DataGridEmployees��5Y         AutoGenerateColumns .  $
��Left=�5\      $
��1000��5]      $	��295��6      RowBackground �	#FFE6D3EF   AlternatingRowBackground �	#FC96CFD4���	#FF1F33EB$��3q�5a         	RowHeight$ 25Q�5b       � Cursor$
 Hand��5c         CanUserAddRows .     CanUserDeleteRows .  $
��1000��5e   %   ��5Z      ��    Columns 5f      0  *System.Windows.Controls.DataGridTextColumn  5g      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *	Surname+$ TwoWay=�$ PropertyChanged=�6�     5h      $ Имя��6%    62   �� *Name+$ TwoWay=�$ PropertyChanged=�6     5i      $ Отчество��6%    67   �� *
Patronymic+$ TwoWay=�$ PropertyChanged=�6�   4  .System.Windows.Controls.DataGridComboBoxColumn  5j      $ Должность��6)      DisplayMemberPath$ Title1��5l   !      SelectedValuePath$ ID��5n   !      SelectedValueBinding 5m   !   ��  �� Path$ TitleId�$ TwoWay=�$ PropertyChanged=�5n   ;   4	  .System.Windows.Controls.DataGridTemplateColumn	  5o      $ Дата рождения��6)    	  CellTemplate# [  5p   !    	  CellEditingTemplate# [ 5q   !   6_     5r      $ Телефон��6%    66   �� *	Telephone+$ TwoWay=�$ PropertyChanged=�6�     5s      $' !Электронная почта��6%      EditingElementStyle# [ 6@    5t      �� 5u      $ Email�6"   $ TwoWay=�60   $ PropertyChanged=�6>     �� ValidatesOnExceptions  . ! �� ValidationRules! 5v      $
   wpf2.ValidationRules.EmailRule
  5w   "   5y      5{      !"   RowValidationErrorTemplate" 5}      �� 5~      .R�5      � $��	0,-2,0,-2q�6    5�      �� # �� RelativeSource# �� *FindAncestor+$ �� AncestorType)  #System.Windows.Controls.DataGridRow"$  $) #(Validation.Errors)[0].ErrorContent�.+�5�      A� $��0��6"   
���  ��#��z��6A   #��z��5�      �� 5�      $��!��6$   #��z��6-   $
��Bold"�6S   
�������$��Center=�5�   '   5�      5�      5�      �� 5�   
   -   5        $��
BorderFind��5�      
���   �$��1q�67   $	��100��6K   $	��300��6X   #��[ 6d   ._�5�      � -   5        $��GridFind��5�      % � RowDefinitions% 5�      �� 5�      �� 5�      �� 5�      & � ColumnDefinitions& 5�      �� 5�      �� 5�      $	��130 �6'   �� 5�      .+�5�      �� $��3��6   $��0��60   $��0��6=   $��
Поиск��6M   $��Center=�6Z   $��Center=�6w   $
��Bold"�6�   �� 5�      -   5        $��TextBlockSurname��5�      $��Фамилия��66   $��1��6E   $��0��6R   $��Center=�6c   �� 5�      -   5        $��TextBoxSurname��5�      $��1��6[   $��1��6h   $��Center=�6x   $��5q�6�   �� 5�      -   5        $��ButtonFindSurname��5�      $��1��64   $��2��6A   $$ Поиск по фамилии��6Q   {�.  $��Center=�6�   $��5q�6�   .��5�      �� $��/Images/Find.png��6   5�      �� 5�      -   5        $��TextBlockTitle��5�      $��2��64   $��0��6A   $��Должность��6Q   $��Center=�6b   �� 5�      -   5        $��ComboBoxTitle��5�      ' �� Text$' StaticResource listTitle��62   ( �� DisplayMemberPath$( Title1��5�      $��2��6^   $��1��6k   $��Center=�6{   $��5q�6�   �� 5�      -   5        $��ButtonFindTitle��5�      $( "Поиск по должности��62   {�.  ) J� RenderTransformOrigin$) 0,0.043&�6�   $��2��6�   $��2��6�   $��Center=�6�   $��5q�6�   .��5�      �� $��/Images/Find.png��6   $) -0.368,-0.263&�66   5�      5�      5�      5�      5�      