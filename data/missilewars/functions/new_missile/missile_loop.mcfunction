execute if score missile_time m.Variables matches 0 in missilewars:lobby run function missilewars:new_missile/new_missile
execute if score missile_time m.Variables matches 0 store result score missile_time m.Variables run bossbar get missile_time max
scoreboard players remove missile_time m.Variables 1
execute store result bossbar missile_time value run scoreboard players get missile_time m.Variables