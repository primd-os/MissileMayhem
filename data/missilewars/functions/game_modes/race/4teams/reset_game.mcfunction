function missilewars:end/finish_game
execute as @a[x=0] run function missilewars:game_modes/4teams/join_auto
function missilewars:game_modes/race/4teams/init_arena
function missilewars:maps/slow_clear_map