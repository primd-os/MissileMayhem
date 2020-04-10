loot insert ~ ~-1 ~ loot minecraft:blocks/stone
scoreboard players remove temp3 Constants 1
execute if score temp3 Constants matches 1..2147483647 run function missilewars:custom_missile/loot_loop