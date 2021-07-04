function missilewars:set_lobby/minimaps/maps/basic
fill ^-1 ^ ^ ^1 ^3 ^ white_stained_glass
setblock ^-2 ^ ^ minecraft:dark_oak_sign[rotation=8]{Text1:"",Text2:'{"text":"Center Wall","color":"white","clickEvent":{"action":"run_command","value":"trigger ChooseMap set 2"}}'} destroy