execute if score missile_time Variables matches 0 as @e[type=area_effect_cloud,tag=BlueBase] if score @s GameState matches 1 at @s run function missilewars:new_missile/new_missile
execute if score missile_time Variables matches 0 store result score missile_time Variables run bossbar get missile_time max
scoreboard players remove missile_time Variables 1
execute store result bossbar missile_time value run scoreboard players get missile_time Variables