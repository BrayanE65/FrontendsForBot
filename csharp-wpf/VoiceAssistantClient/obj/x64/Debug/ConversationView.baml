   M S B A M L   `   `   `  ����P  LVoiceAssistantClient, Version=1.24.2.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:VoiceAssistantClientVoiceAssistantClient  5      +    %VoiceAssistantClient.ConversationView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:VoiceAssistantClient     5      .��5
      �� -   5          ��Name$  ConversationHistory��5
   0   $��Stretch=�6M   ��.  $��Disabled=�5   5   ��5
      �� *
Messages+��5   
   �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value$ Stretch=�6?   5      ��5   
   �� 5      .R�5      ��  �� Orientation$ Vertical=�6   .+�5      �  � RowDefinitions 5      �� 5      $
��auto �6,   �� 5      $
��auto �6,    � ColumnDefinitions 5      �� 5      ��5   "   �� 5   &   " ��6,   .�5   *   ��  � ��$ 1* �6B    �� Triggers 5    *   �� 5!   .    �� Binding 6:   �� 	 �� Path$
	 From�
 �� Value
 User6X   .a�5"   2   ��  � ��$ 0 �6J   5#   /   5%   '   5'      �� 5(      $��5* �6/   �� 5)      ��5*   "   �� 5+   &   " ��6,   .�5,   *   ��  � ��$ 1* �6B    5-   *   �� 5.   .    6:   �� $
	 From�
 Bot6X   .a�5/   2   ��  � ��$ 0 �6J   50   /   52   '   54      .+�58      � $��0��6   $��1��6,   $
��5, 0q�6<   y�6J   �� *
Visibility+ 59      �� 5:   "   $
��auto �60   �� 5;   "   $
��auto �60   .+�5=      �� $��
textBubble��6�   
���   � �� CornerRadius$ 10��6:    �� Padding$ 2q�6L   $��Right=�6X   
�����F�._�5>   "   �� $��	textBlock��6�   $��1��6+   
������ 
�������$
��Bold"�6}   $��Center=�5?   4    �� TextAlignment$ Center=�6Q   $��50��6h   $��0q�6w   $	��5,0q�6�    �� TextWrapping$
 Wrap=�5@   4   ��5>   8   �� *	Message+5@   4   5A      � 5B      $��	bubbleTip��6�    � Points �    ��@KL 
�����F�$��0,-1,5,0q�6P   $��Right=�6b   $��1��6~   6�   5C      �� 5F      $��1��6#   $��1��60   $��0q�6@   $��Stretch=�6z   $��Disabled=�6�   ��6T   �� *AdaptiveCards+��5G      �� 5H   "   " ��6(   .�5I   &   ��  � ��$ Stretch=�6S   5J   #   ��5L      �� 5M   "   .R�5N   &   �� #��Z�6.   $ 8��6f   $��1q�6w   ._�5O   *   �� $��adaptiveCard��6H   $	��3,3q�6;   ��6\   �� 5P   '   5Q   #   5S      5T      5U       �� Triggers 5V      �� 5W      $

 User��6@    6"   �� $
	 From�.a�5X      ��  �� 
TargetName$ 
textBubble��6I    � ��
 ���F��� 5Y      $ 	bubbleTip��6C    � ��
 ���F��� 5Z      $ 	bubbleTip��6H    �@�Points �   @KL  $� �� 5[      $ 	bubbleTip��6D    � ��$ 5,-1,0,0q�63   6D   �� 5\      $ 
textBubble��6M    � ��$
 Left=�6@   6M   �� 5]      $ 	textBlock��6N    � ��$
 Left=�6A   6N   �� 5^      $ 	bubbleTip��6M    � ��$
 Left=�6@   6M   5_      �� 5`      $	
 Bot��6@    6"   �� $
	 From�.a�5a      �� $ 	bubbleTip��6I    �@�Points �    ��@KL �� 5b      $ 	bubbleTip��6D    � ��$ 0,-1,5,0q�63   6D   �� 5c      $ 
textBubble��6K    � ��
 �"�"��� 5d      $ 	bubbleTip��6E    � ��
 �"�"��� 5e      $ 
textBubble��6N    � ��$ Right=�6@   6N   �� 5f      $ 	textBlock��6O    � ��$ Right=�6A   6O   �� 5g      $ 	bubbleTip��6N    � ��$ Right=�6@   6N   5h      �� 5i      $
 Channel��6@    6"   �� $
	 From�.a�5j      �� $ 
textBubble��6G    � ��
 �  ���� 5k      $ 	bubbleTip��6<    �@�Points	 �    �� 5l      $ 
textBubble��6O    � ��$ Center=�6@   6O   �� 5m      $ 	textBlock��6P    � ��$ Center=�6A   6P   5n      5p      5r      5s      