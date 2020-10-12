function missilewars:set_lobby/minimaps/basic
fill ^ ^2 ^-3 ^ ^2 ^3 white_stained_glass
setblock ^-2 ^ ^ minecraft:dark_oak_sign[rotation=8]{Text1:"",Text2:'{"text":"Bridge","color":"white","clickEvent":{"action":"run_command","value":"trigger MapVote set 6"}}'}