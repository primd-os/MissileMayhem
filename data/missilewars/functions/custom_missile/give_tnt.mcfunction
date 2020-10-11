execute if score tnt m.Variables matches 1.. run give @s tnt{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 1
scoreboard players remove tnt m.Variables 1
execute if score tnt m.Variables matches 1.. run function missilewars:custom_missile/give_tnt