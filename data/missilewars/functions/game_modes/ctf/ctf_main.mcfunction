execute at @e[type=marker,tag=Flag,tag=!taken] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 obsidian
execute at @e[type=marker,tag=Flag,tag=!taken] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute at @e[type=marker,tag=Flag,tag=!taken] as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=0] run setblock ~ ~ ~ white_banner[rotation=0]
execute at @e[type=marker,tag=Flag,tag=!taken] as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=90] run setblock ~ ~ ~ white_banner[rotation=4]
execute at @e[type=marker,tag=Flag,tag=!taken] as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=180] run setblock ~ ~ ~ white_banner[rotation=8]
execute at @e[type=marker,tag=Flag,tag=!taken] as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=-90] run setblock ~ ~ ~ white_banner[rotation=12]
execute at @e[type=marker,tag=Flag,tag=taken] if block ~ ~ ~ white_banner run setblock ~ ~ ~ air
execute at @e[type=marker,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=0] run setblock ~ ~ ~ white_banner[rotation=0]
execute at @e[type=marker,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=90] run setblock ~ ~ ~ white_banner[rotation=4]
execute at @e[type=marker,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=180] run setblock ~ ~ ~ white_banner[rotation=8]
execute at @e[type=marker,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[y_rotation=-90] run setblock ~ ~ ~ white_banner[rotation=12]
execute at @e[type=marker,tag=Flag,tag=taken] positioned ~ ~30 ~ if block ~ ~ ~ white_banner run setblock ~ ~ ~ air