scoreboard players set @s m.DirectionPlace 1

# uid matching. rx.died is the matching player who died
scoreboard players operation $uid rx.temp = @s rx.death_uid
execute as @a[scores={rx.kill_uid=1..},x=0] if score @s rx.kill_uid = $uid rx.temp run tag @s add rx.killed

# basic death message
execute if entity @a[tag=rx.killed,x=0,limit=1] run tag @s add dieMarked
execute as @s[advancements={missilewars:death/arrow=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was impaled by ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}, "'s arrow"]
execute as @s[advancements={missilewars:death/arrow=true},tag=dieMarked] run tag @s add m.ArrowDeath
execute as @s[advancements={missilewars:death/explosion=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was blown up by ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}]
execute as @s[advancements={missilewars:death/explosion=true},tag=dieMarked] run tag @s add m.ExplosionDeath
execute as @s[advancements={missilewars:death/fire=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was burned to death by ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}]
execute as @s[tag=m.VoidDeath,tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " fell due to ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}]
execute as @s[advancements={missilewars:death/melee=true},tag=dieMarked,tag=!m.ArrowDeath,tag=!m.ExplosionDeath] run tellraw @a[x=0] ["", {"selector":"@s"}, " was stabbed by ", {"selector":"@a[tag=rx.killed,x=0,limit=1]"}]

# remove tag :)
tag @a[x=0] remove rx.killed
tag @s remove m.ArrowDeath
tag @s remove m.VoidDeath

execute as @s[tag=!dieMarked] run tellraw @a[x=0] [{"selector": "@s"},{"text": " died"}]
tag @s remove dieMarked
scoreboard players set @s m.deathCheck 0
advancement revoke @s only missilewars:death/arrow
advancement revoke @s only missilewars:death/explosion
advancement revoke @s only missilewars:death/fire
advancement revoke @s only missilewars:death/void
advancement revoke @s only missilewars:death/melee