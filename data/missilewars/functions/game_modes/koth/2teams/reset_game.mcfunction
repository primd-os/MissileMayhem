function missilewars:end/finish_game
execute as @a[x=0] run function missilewars:game_modes/2teams/join_auto
function missilewars:game_modes/koth/2teams/init_arena