   M S B A M L   `   `   `  ����W  SNewtonsoft.Json, Version=13.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeedT;clr-namespace:Newtonsoft.Json.Linq;assembly=Newtonsoft.JsonNewtonsoft.Json.Linq  5      J FJsonViewControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:JsonViewerControl.TemplateSelectors#JsonViewerControl.TemplateSelectors 5   	   U/clr-namespace:JsonViewerControl.ValueConverters!JsonViewerControl.ValueConverters 5	   	   "   JsonViewerControl.JsonViewer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Mjlinq;clr-namespace:Newtonsoft.Json.Linq;assembly=Newtonsoft.Json     5      OtemplateSelectors1clr-namespace:JsonViewerControl.TemplateSelectors     5   	   KvalueConverters/clr-namespace:JsonViewerControl.ValueConverters     5	   	     � 	Resources  5      >  8JsonViewerControl.ValueConverters.MethodToValueConverter   MethodToValueConverterM GJsonViewerControl.ValueConverters.ComplexPropertyMethodToValueConverter ) %ComplexPropertyMethodToValueConverter7  1JsonViewerControl.ValueConverters.JValueConverter  JValueConverterE  ?JsonViewerControl.ValueConverters.JPropertyTypeToColorConverter ! JPropertyTypeToColorConverterB  <JsonViewerControl.ValueConverters.JValueTypeToColorConverter  JValueTypeToColorConverter=  7JsonViewerControl.ValueConverters.JArrayLengthConverter  JArrayLengthConverter �� DataType!   Newtonsoft.Json.Linq.JArray �� ItemsSource �� 	Converter �� ConverterParameter �� Orientation �� Padding J� Opacity  ArrayPropertyTemplate$   Newtonsoft.Json.Linq.JProperty �� Path	 �� Mode  ObjectPropertyTemplate  PrimitivePropertyTemplate"	   Newtonsoft.Json.Linq.JObject'
   !Newtonsoft.Json.Linq.JConstructor   Newtonsoft.Json.Linq.JRawG  AJsonViewerControl.TemplateSelectors.JPropertyDataTemplateSelector !	 JPropertyDataTemplateSelector
   ArrayPropertyTemplate   ObjectPropertyTemplate    PrimitivePropertyTemplate!   Newtonsoft.Json.Linq.JValue��%�  &	        &	      &	 &     &	 9     &	 L     &	 _     (�� r     5   #   *, +)7   7  &	 �    7  7  &	     7  &	     7  7  (�� a    54   #   *,	 +)7   (�� 0    5:   #   *,
 +)7   (�� �    5>   #   *, +)7   &		     7  7  7  (�� 6    5H      *, +)7  7    5   
   61     5   
   6@     5   
   6*     5   
   68     5   
   65     5   
   60   �� 5   
   "  6#    6D   �� 8   $ Children��.R�5      �� $ 
Horizontal=�6   $��1q�62   .+�5      �� $��array��6   
����������#a40000$ 
3, 0, 3, 1q�6V   $	 0.4Q�6k   $��0,0,5,0q�6y   �� 5      ���#a40000��6   �� 8  6^   5      5      �� 5   
   "  6B    6f   �� 8   $ Children��.R�5      �� $ 
Horizontal=�6   $��1q�62   .+�5      �� ��6   �� $
 Name�$	 OneWay=��� 5      $	�� : ��6   �� 5      $��array��6   
����������#a40000$ 
3, 0, 3, 1q�6V   $	 0.4Q�6k   $��0,0,5,0q�6y   �� 5      ���#a40000��6   �� 8  6^   5      5       �� 5!   
   "  6C    6g   �� 8   $ Children��.R�5"      �� $ 
Horizontal=�6   $��1q�62   .+�5#      �� ��6   �� $
 Name�$	 OneWay=��� 5$      $	�� : ��6   �� 5%      $	��{ }��6   ���#729fcf6)   5&      5'      �� 5(   
   "  69   .R�5*      �� $ 
Horizontal=�6   $��1q�62   .+�5+      �� ��6   �� $
 Name�$	 OneWay=��� 5,      $	�� : ��6   �� 5-      $��  ��6   �� 5/      -   5        $	��300��5/   O   $
��Wrap=�50      ��60   �� $ Value�8   ��51      �� 8  52      53      �� 54   
   " 	 6#    6E   �� 8   $ Children��.R�55      �� $ 
Horizontal=�6   $��1q�62   .+�56      �� $�� ��6   �� 57      $	��{ }��6   ���#729fcf6)   58      59      �� 5:   
   " 
 6#    6J   �� 8   $ Children��.R�5;      �� $��Constructor��6   5<      5=      �� 5>   
   "  6#    6B   �� 8   $ Children��.R�5?      �� $	��Raw��6   5@      5A        5C   
   8
   8  8  5F   .   �� 5H   
   "  6   .R�5I      �� -   5        $	��300��5I   K   $
��Wrap=�5J      ��60   �� 8   ��5K      �� 8  5L      5M      .��5N      ]� -   5        $��	DockPanel��5N      $y�Visible=�6!   .+�5O   
   � $	��Top=�6   ���#20848B � ColumnDefinitions 5P      �� 5Q      $��* �6#   �� 5R      $
��auto �6#   .+�5U      �� $��0��6   
�������$ 4q�6\   ��6(   �� *JsonViewerTitle+6\   �� 5W      $��1��6   $ 
Horizontal=�6)   .+�5X      �� -   5         � ToolTip$ 
Expand All��5X   +   $��5q�6@   .��5Y      �� $��/Resources/expand.png��6   $��16��6;   5Z      �� 5[      -   5        $ Collapse All��5[   -   $��5q�6D   .��5\      �� $��/Resources/collapse.png��6   $��16��6=   5]      5^      5_      R� 5a   
   -   5        $��JsonTreeView��5a   +   $��20q�6   $��3q�6     �� IsTextSearchEnabled . #��[	 6Z   $��Bottom=�6�   $��0q�6�   ��5b      �� 5c       �� 
TargetType" Q�6   .�5d      ��  �� Property �@Q�
IsExpanded �� Value .  63   5e      5g      5h      5i      