function missilewars:end/finish_game
execute as @a[x=0] run function missilewars:game_modes/4teams/join_auto
function missilewars:game_modes/royale/4teams/init_arena
function missilewars:maps/slow_clear_map
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 18000
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 18000000