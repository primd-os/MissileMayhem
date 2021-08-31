execute if entity @a[team=Green,x=0] if entity @a[team=Blue,x=0] if score @s m.GameState matches 2 unless entity @a[team=!Spectator,scores={m.DoRanked=0},x=0] run function missilewars:end/add_points

execute if entity @s[scores={m.Timer=..-72000}] run advancement grant @a[x=0] only missilewars:unintentional_design

effect give @a[x=0] instant_health 1 10 true

kill @e[type=item,x=0]
kill @e[type=arrow,x=0]
kill @e[type=fireball,x=0]
kill @e[type=marker,x=0]