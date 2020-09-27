scoreboard players set @s DirectionPlace 1

# uid matching. rx.died is the matching player who died
scoreboard players operation $uid rx.temp = @s rx.death_uid
execute as @a[scores={rx.kill_uid=1..},x=0] if score @s rx.kill_uid = $uid rx.temp run tag @s add rx.killed

# basic death message af
execute if entity @a[tag=rx.killed,x=0,limit=1] run tellraw @a[x=0] ["", {"selector":"@s"}, " was killed by ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}]
execute if entity @a[tag=rx.killed,x=0,limit=1] run tag @s add dieMarked

# remove tag :)
tag @a[x=0] remove rx.killed

execute as @s[tag=!dieMarked] run tellraw @a[x=0] [{"selector": "@s"},{"text": " died."}]
tag @s remove dieMarked
scoreboard players set @s fallDistance 0
scoreboard players set @s deathCheck 0

tag @s add Died