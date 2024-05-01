GDPC                �                                                                         P   res://.godot/exported/133200997/export-84d343c4ab84bd4c0000a57675c7d9cd-pong.scn       9      *��} �?g�ٵo�    ,   res://.godot/global_script_class_cache.cfg  �             ��Р�8���8~$}P�    D   res://.godot/imported/ball.png-9a4ca347acb7532f6ae347744a6b04f7.ctex0      b       �v��6��OR�6-��    H   res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex   p      z      J��F�l�~�?�4�O    H   res://.godot/imported/paddle.png-0e798fb0912613386507c9904d5cc01a.ctex  �      h       =;b��:����`萭    L   res://.godot/imported/separator.png-f981c8489b9148e2e1dc63398273da74.ctex   @      j       Hy���1�l�.��n�       res://.godot/uid_cache.bin  `%      �       ],���B��%��.�[�       res://ball.png.import   �      �       ����%n)�}MH       res://icon.webp       D      ���g�]�ݱ�dwD��       res://icon.webp.import  �      �       L�K��W����Yl	��       res://logic/ball.gd         8      ���̉GQȎ����+	       res://logic/ceiling_floor.gd@      �       �s2G��c(*�3t<       res://logic/paddle.gd          �      _�U���h�V����       res://logic/wall.gd �      �       �H����3L":��i�t�       res://paddle.png.import 0      �       �i:(ӑt8�P��       res://pong.tscn.remap   �      a       �K(о������h>�       res://project.binary�%      �      <ˢ.�r��B�i�Ӂ       res://separator.png.import  �      �       �5sTM�?W�&g?2�=�            extends Area2D

const DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT

@onready var _initial_pos = position

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction


func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED
        extends Area2D

@export var _bounce_direction = 1

func _on_area_entered(area):
	if area.name == "Ball":
		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()
      extends Area2D

const MOVE_SPEED = 100

var _ball_dir
var _up
var _down

@onready var _screen_size_y = get_viewport_rect().size.y

func _ready():
	var n = String(name).to_lower()
	_up = n + "_move_up"
	_down = n + "_move_down"
	if n == "left":
		_ball_dir = 1
	else:
		_ball_dir = -1


func _process(delta):
	# Move up and down based on input.
	var input = Input.get_action_strength(_down) - Input.get_action_strength(_up)
	position.y = clamp(position.y + input * MOVE_SPEED * delta, 16, _screen_size_y - 16)


func _on_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
		area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
             extends Area2D

func _on_wall_area_entered(area):
	if area.name == "Ball":
		#oops, ball went out of game place, reset
		area.reset()
          GST2            ����                        *   RIFF"   WEBPVP8L   /�0��?���8�D��               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://clowikjgl4yq1"
path="res://.godot/imported/ball.png-9a4ca347acb7532f6ae347744a6b04f7.ctex"
metadata={
"vram_texture": false
}
                GST2   �   �      ����               � �        B  RIFF:  WEBPVP8L.  /� ͐I��lo#�ǩy�Qжc�(��@DQ�6P���� �G��I �
aH�B�@ i�""��mm۵�y���M�i J� ��:@@ 1�W����s�����kc2ȑ$)�����t����Z�ݔ�m۲5��	����A�A�,�,@�I6H�;X�N����'�mI���9�],:��m��H��xl��ڶJVF����O`g۶m}���r��E0�V�m[i, \ @����mwwwww�O�/��'w�Xɮ���O�<as ��
h`[�oy�&xlK��m#E^�c�̛Ĺ�k��B�De 9���N�ؤg��]��h�Jߐ����
I�zn��U��H�M�D+�̗{�%Ș_�\Zm��^:}��?�����WC�v��r���Ka��7~!g0����M����?�QP�����-L�Q@�J�X=�r��5g�]��l薀)��K�\^q|��mW�ǝ�{|d�ُc���������ۛN��%��y2y�x������S�S�޹���;�^�V��i�x[|ǟ�q���1_�C�zᅶq; c����n��w:����m�0H��������]�p�^��8X���O;��6��-�t�5��1ew�^�$��A�A�e`��'��3~��*��A  ��m���1�p(�9c�ȏA��A�3�����v==+���-�z�\w4q:�fg2p�s]hU��A:���i��;�f��Q  �Kg�(5�@�|�x���@��n�1;��JFl�!sRd�k稔(-3MK5w]�/N��#伃s�j��nwgdN�e�Z�Cڸ�]�'w�=wmS9�t{��)�]��'w��Y7E䮣c���3"��]k�{޵F�Z���T�=w�'9�U?�5箩ȹU���580�M'�䮩u�	�R@��� �X�� �̠(�����P@P��;<0� ����s+���P�Z�z����e�Ot_��VT0��4��jU������/gس���*hB�:��]ЗI F���J0�!�c�� ���"��H�l�@U�b� ��
�*N1�z�?{U~?���lyҐ�5����K�Ś�@'
ku�+��ŤA�2�#� �
�:����U�x<7��_P�2џ��
�-��R���ϻ���\�a�S���# @��	�vՆ!( � +�4����ff�'�@A� �.������q��#/`����s%�f��W���h��2��y�~�K���z�u�t�5��!+�E|�����~ `�2�ƕt+D��O��W0|���?� Q�8|��q@�� �b�C�	���̲0B1��[S���o7{'�
�:��Ď����+r�\��@${r�ϫ�N/�y����jOc�^G��oI^�H��M~B�t��0 D�-�<�1'����AO#շ�-@�0��(�t��9x"�?7d���Xur��
  ������X�%����YjS�ҺQ=A �v�鹁�6��t���]��.�����3�  	��E����9v����8���;�!F@����;I�x }�m�/�>���3��wx�"��g������m���j����;�E'n6zhN��5���,a��7����8���I�?:<>�_E6)Wf�߶���N  �3l�@`@�,�� ��P�t�B��U���@M�$a��0ա?���ށy8��} ҂[�C5l�ânV/�����j`���fԁG��l�:�Xq¤��^�ܲ6��MuMQ�w�0GmDQ���ɥJ4�!N����V*�,�N+��Q���3@@0G��h
B��A`����*�?(��id��	 }�,�������Q�.��>�hs�`k�U6D4�M�4��t�`k�C=+T����<`B^L�oՃS�V��y����1�[.�LՂ&s�,��E=���L��C,,t�� Phx�^���I�XtX�HR�Z�2"3�����w�������7��|��鳕�9�����A����" [n������������*9V��ۂ�����hYy�rv       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://brwp8bimc75uu"
path="res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex"
metadata={
"vram_texture": false
}
               GST2             ����                         0   RIFF(   WEBPVP8L   /�0��?���&b���� ��A         [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dvrb8efddt0aa"
path="res://.godot/imported/paddle.png-0e798fb0912613386507c9904d5cc01a.ctex"
metadata={
"vram_texture": false
}
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://logic/paddle.gd ��������
   Texture2D    res://paddle.png ���>~Lx   Script    res://logic/ball.gd ��������
   Texture2D    res://ball.png ��dG�^M
   Texture2D    res://separator.png �Њ5t   Script    res://logic/wall.gd ��������   Script    res://logic/ceiling_floor.gd ��������   
   local://1 �      
   local://2 �      
   local://3 �      
   local://4 $         local://PackedScene_jvbe6 U         RectangleShape2D       
      A   B         RectangleShape2D       
      A   A         RectangleShape2D       
     �A  �C         RectangleShape2D       
      D  �A         PackedScene          	         names "         Pong    Node2D    Background    offset_right    offset_bottom    color 
   ColorRect    Left 	   modulate 	   position    script    Area2D 	   Sprite2D    texture 
   Collision    shape    CollisionShape2D    Right    Ball 
   Separator 	   LeftWall 
   RightWall    Ceiling    Floor    _bounce_direction 	   Camera2D    offset    _on_area_entered    area_entered    _on_wall_area_entered    	   variants             D     �C   q�>��>��(>  �?         �?  �?  �?
   �A�B�@C                                  �?      �?  �?
   )�DD�<C
    @�C�?C                           
     �C  HC         
      �  HC                  
    �"D  HC
     �C   �                  
     �C  �C   ����      node_count             nodes     �   ��������       ����                      ����                                        ����         	      
                       ����                          ����                           ����         	   	   
                       ����                          ����                           ����   	   
   
                       ����                          ����                           ����   	                              ����   	      
                       ����                           ����   	      
                       ����                           ����   	      
                       ����                           ����   	      
                             ����                           ����                   conn_count             conns     *                                                                                                                                                   node_paths              editable_instances              version             RSRC       GST2      �     ����                �       2   RIFF*   WEBPVP8L   /�c0��?��� ��i;���E���}a       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://drgpdyyomyqpl"
path="res://.godot/imported/separator.png-f981c8489b9148e2e1dc63398273da74.ctex"
metadata={
"vram_texture": false
}
           [remap]

path="res://.godot/exported/133200997/export-84d343c4ab84bd4c0000a57675c7d9cd-pong.scn"
               list=Array[Dictionary]([])
     RIFF<  WEBPVP8L0  /� ����ϐ�|�ضm۹�m^:�4�'��������L-�_�~���ڮ��T8ϑ[۶�-W�����}�k��@LtB�!h2H����KɶE��%���C1s͘����������$�ߵ$IR��A�>r, �d�v�kئ�g�W� ]#���U�HV��Rf�9��֐mh�߄�'�ۙlo�eRN���^v ���j|yEo�a#o�����D(��-�������&���  a���(
E�0��3i�	�������1E�4h"��� p���(b�ff�_��R�E�`1^N�~�p3�x��}Wn)�M���څ=�󑷖��^l���{n��*1�c�eQ>���Tf�"0s"��W]�2����KOg[-*Fa�����Z�o�����VTe��4��y{�?��O�:/�VVhq)!����1�i7'D���"�Z�����[�K����(p!�Kҋ9Eg[8��G;	� J�@��EB��u���ŋ8�G_��#�%���Ï
d�mN�w��}�ʓ�����SԔs�k���:A�D��R�h����T��!�9'��Ov�5 � 2M!z�b4d#�]����}�t����:��)z��z.���V��ir&�$��3&��pɻq�o���ykΔwȮ[���1Z�PȮA�h.����k6�.�^��C�vDPV�Lv�s�k眓]g��J�f:]v���Ɨ۸z��gٵ/��!Z�
��_`�ќ�
ٵ�X��6Cl�s�Ž�����Wݪ�f������6J`�5��r�;��������-K�o��F��t�_r���6�=�y��u�Sk���&x�\�������l�����:�Ѻ����/5M�fk�$�n݅-0��yJ	7L���2nX"�|-��A,Mm׌��S'[wZ,ե�cZ*(�Ҕt��_����@�~E�6���n���k��J���u|�߈9~�1J�ޓ�cJ#� �5".�Su�B��c�0��n��+��@�L�Ƙ��)D@"�Ƥ�f�ۡ�x9O�v04Iޭ<�z.�g���M�h��5>���f��(�@�]��M��mH3xmh Y�o�\��⠠y��ٔ3�������mW�w����o��i�������>o⏄�	њZE�*��Ā����	/�}x�#_Avݧ)�zVs�f�ovmĸ��^C��#��Z��_
������0�@�>�@���z@+$1֗E�e*̫ϣ��;�ġ���*H��G���[���>��mX�k�2��M��
����9�_������4[���iT�W:��� �J�F�Ѵ��\�62��I��Ì��c�z��B�l�N{o�]���\�{Ë9�a����s#��F�d�%�Z�T�bi�c^��ݬ��)Ź��O>^v�ǫ��
OG�N;xr���m{on�^ȣ5�g�+ �����u2��@�p�K��-������ ��+V'>$���9����p�O��~�r�)�] ٳR���Wխ�}��]Jk�M�}��@�ڞ�Ґ*%��	��d���L�&�,{db��KޓY�%���To������`5�%n3t4 O�L� T@����_5ۧ�{"~�cu��ڱ�i�뎩���Q�(
���y�iZ����=�7�����G;��9)Y$O�w�`���g����~/Y,-��V��: [돿�U.�$���8%c:`���-�ٚ~W^Q�	,�&$P���`q^ ��=��S�~y�k_�Ë�Z�k���-:m�T��ݺ���) ���O��\��m]=M,�c��V-;��B=����Ǖ ���l
�%b�h�=���+�����$�vQx�1���~��i               ��dG�^M   res://ball.pngT��jT3R2   res://icon.webp���>~Lx   res://paddle.png��msH	   res://pong.tscn�Њ5t   res://separator.png ECFG      application/config/name         Pong with GDScript     application/config/descriptionl      d   A simple Pong game. This demo shows best practices
for game development in Godot, including signals.   application/config/tags,   "         2d     demo    	   official       application/run/main_scene      	   pong.tscn      application/config/features   "         4.2    application/config/icon         res://icon.webp "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �     display/window/stretch/mode         canvas_items   display/window/stretch/aspect         expand  !   display/window/stretch/scale_mode         integer    input/left_move_down0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode           echo          script         input/left_move_up0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           echo          script         input/right_move_down0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/right_move_up0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility2   rendering/environment/defaults/default_clear_color      ���=���=s� >  �?-   rendering/2d/snap/snap_2d_transforms_to_pixel         +   rendering/2d/snap/snap_2d_vertices_to_pixel                     