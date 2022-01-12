function missilewars:end/finish_game
execute as @a[x=0] run function missilewars:game_modes/4teams/join_auto
function missilewars:game_modes/normal/4teams/init_arena