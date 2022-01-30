tag @a[z=50,dz=50,x=-200,dx=400,y=0,dy=200,tag=m.GotRace] add m.WonFFA
execute if entity @a[x=0,tag=m.WonFFA] run tag @a[x=0] remove m.GotRace
execute if score @s m.GameState matches 1 if entity @a[tag=m.WonFFA,x=0] run function missilewars:game_modes/ffa/end_game