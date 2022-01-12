data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data set value {game_mode:"KOTH",team_type:"4 Teams"}
function missilewars:maps/queue/4teams
function missilewars:game_modes/koth/4teams/init_arena
function missilewars:game_modes/4teams/join_auto

function missilewars:game_modes/create_game/get_sign_location
execute in missilewars:lobby at @e[type=marker,x=0,tag=m.SignPlacer] run setblock -14 ~ ~ minecraft:oak_wall_sign[facing=east]{Text1:'{"text":"4 Teams"}',Text2:'{"text":"KOTH"}',Text3:'{"text":"Click to Join","clickEvent":{"action":"run_command","value":"function missilewars:game_modes/join"}}'} destroy
execute in missilewars:lobby run kill @e[type=marker,x=0,tag=m.SignPlacer]