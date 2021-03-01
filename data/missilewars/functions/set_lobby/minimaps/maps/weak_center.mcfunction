function missilewars:set_lobby/minimaps/maps/basic
fill ^ ^ ^-2 ^ ^2 ^2 air
setblock ^-2 ^ ^ minecraft:dark_oak_sign[rotation=8]{Text1:"",Text2:'{"text":"Weak Center","color":"white","clickEvent":{"action":"run_command","value":"trigger MapVote set 5"}}'}