data modify entity @e[type=marker,x=0,tag=m.NewGame,limit=1] data set value {game_mode:"CTF",team_type:"2 Teams"}
function missilewars:maps/queue/2teams
function missilewars:game_modes/ctf/2teams/init_arena
function missilewars:game_modes/2teams/join_auto

function missilewars:game_modes/create_game/get_sign_location
execute in missilewars:lobby at @e[type=marker,x=0,tag=m.SignPlacer] run setblock -14 ~ ~ minecraft:oak_wall_sign[facing=east]{Text1:'{"text":"2 Teams"}',Text2:'{"text":"CTF"}',Text3:'{"text":"Click to Join","clickEvent":{"action":"run_command","value":"function missilewars:game_modes/join"}}'} destroy
execute in missilewars:lobby run kill @e[type=marker,x=0,tag=m.SignPlacer]