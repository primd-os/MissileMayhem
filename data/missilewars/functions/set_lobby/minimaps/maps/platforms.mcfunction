function missilewars:set_lobby/minimaps/maps/basic
fill ^-1 ^1 ^-2 ^1 ^1 ^2 air
fill ^-1 ^ ^-1 ^1 ^ ^-1 white_stained_glass
fill ^-1 ^ ^1 ^1 ^ ^1 white_stained_glass
setblock ^-2 ^ ^ minecraft:dark_oak_sign[rotation=8]{Text1:"",Text2:'{"text":"Platforms","color":"white","clickEvent":{"action":"run_command","value":"trigger MapVote set 4"}}'} destroy