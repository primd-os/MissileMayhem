give @s tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 1
scoreboard players remove tnt Constants 1
execute if score tnt Constants matches 1.. run function missilewars:custom_missile/give_tnt