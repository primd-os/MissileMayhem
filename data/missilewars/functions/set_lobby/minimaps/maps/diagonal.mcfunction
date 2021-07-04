execute positioned ^2 ^ ^ run function missilewars:set_lobby/minimaps/parts/b/basic
execute positioned ^2 ^ ^ run function missilewars:set_lobby/minimaps/parts/b/glass1
execute positioned ^2 ^ ^ run function missilewars:set_lobby/minimaps/parts/b/glass23
execute positioned ^-2 ^ ^ run function missilewars:set_lobby/minimaps/parts/g/basic
execute positioned ^-2 ^ ^ run function missilewars:set_lobby/minimaps/parts/g/glass1
execute positioned ^-2 ^ ^ run function missilewars:set_lobby/minimaps/parts/g/glass23
setblock ^-2 ^ ^ minecraft:dark_oak_sign[rotation=8]{Text1:"",Text2:'{"text":"Diagonal","color":"white","clickEvent":{"action":"run_command","value":"trigger ChooseMap set 5"}}'}