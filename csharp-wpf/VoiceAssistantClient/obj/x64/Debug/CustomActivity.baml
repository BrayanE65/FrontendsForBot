   M S B A M L   `   `   `  ����P  LVoiceAssistantClient, Version=1.24.2.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:VoiceAssistantClientVoiceAssistantClient  5   	   /    )VoiceAssistantClient.CustomActivityWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:VoiceAssistantClient     5   	     � Title$   Custom Activity Definition��5   	   $	��450��6,   $	��800��69    � 	Resources 5	       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property	 P� Value��%�  '��       '�� [    �� 5
   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $ 3��6!   #��z��62   $��1q�5   !   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5      5       5      P� 5       �@J�IsMouseOver	 . . �5      ��  � ��
 �����63   5      5      �� 5   
   " ��6   .�5      ��  � ��$	 0,2q�6'   5       5!      .��5"      � $	��5,5q�6   
 � ColumnDefinitions
 5#   
   �� 5$      $��* �6    � RowDefinitions 5&   
   �� 5'      $
��auto �6   �� 5(      $
��auto �6   �� 5)      $��* �6   �� 5*      $
��auto �6   .+�5,   
   �� $��0��6   $��0��6!   $W��QDefine a custom Activity to send to the bot by specifying the Json payload below:��61   $��	5,10,5,10q�6�   ]� 5-   
   $��1��6   $��0��6"   ��. .+�5.      �� $��Activity Friendly Name:��6   �� 5/      -   5        $��ActivityTag��5/      ��6)   �� *CustomActivityTag+50      �� 51   
   -   5        $��SendActivityPayload��51   /   $��2��6   $��0��6    �� TextWrapping$
 Wrap=�52       �� AcceptsReturn .  �� 
AcceptsTab . $
��Auto=�53      $��Courier New)�54      $��14(�6+   ��51   J   �� *CustomActivityContent+54   +   �� 55   
   $��3��6    �� Orientation$ 
Horizontal=�6#   $��Right=�6<   .+�56      �� -   5         ��Name$ RemoveButton��56      $	��0,2q�6G   $��Bottom=�6T   .��57      �� $��Delete��6    �� Padding$ 	10,5,10,5q�6*   58      �� 5:      -   5        $ SaveActivityButton��5:      $��2q�6R   $��Bottom=�6]   .��5;      �� $
��Save��6   $ 	10,5,10,5q�6(   5<      �� 5=      -   5        $ CancelButton��5=       �� IsCancel . $��2q�6W   $��Bottom=�6b   .��5>      �� $��Cancel��6   $ 	10,5,10,5q�6*   5?      5@      5A      5B      