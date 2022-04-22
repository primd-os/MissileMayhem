scoreboard players set @s m.DirectionPlace 1

# uid matching. m.killed is the matching player who died
scoreboard players operation $uid rx.temp = @s rx.death_uid
execute as @a[scores={rx.kill_uid=1..},x=0] if score @s rx.kill_uid = $uid rx.temp run tag @s add m.killed

team modify m.FFA prefix {"text": ""}
team modify m.Blue prefix {"text": ""}
team modify m.Green prefix {"text": ""}
team modify m.Red prefix {"text": ""}
team modify m.Purple prefix {"text": ""}

# basic death message
execute if entity @a[tag=m.killed,x=0,limit=1] run tag @s add dieMarked
execute as @s[advancements={rx:death_cause/arrow=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was impaled by ", {"selector":"@a[tag=m.killed,x=0,limit=1]"}, "'s arrow"]
execute as @s[advancements={rx:death_cause/arrow=true},tag=dieMarked] run tag @s add m.ArrowDeath
execute as @s[advancements={rx:death_cause/explosion=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was blown up by ", {"selector":"@a[tag=m.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/explosion=true},tag=dieMarked] run tag @s add m.ExplosionDeath
execute as @s[advancements={rx:death_cause/fire=true},tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " was burned to death by ", {"selector":"@a[tag=m.killed,x=0,limit=1]"}]
execute as @s[tag=m.VoidDeath,tag=dieMarked] run tellraw @a[x=0] ["", {"selector":"@s"}, " fell due to ", {"selector":"@a[tag=m.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/melee=true},tag=dieMarked,tag=!m.ArrowDeath,tag=!m.ExplosionDeath] run tellraw @a[x=0] ["", {"selector":"@s"}, " was stabbed by ", {"selector":"@a[tag=m.killed,x=0,limit=1]"}]

execute as @s[tag=!dieMarked] run tellraw @a[x=0] [{"selector": "@s"},{"text": " died"}]

team modify m.FFA prefix {"text": "MissileMayhem | "}
team modify m.Blue prefix {"text": "MissileMayhem | "}
team modify m.Green prefix {"text": "MissileMayhem | "}
team modify m.Red prefix {"text": "MissileMayhem | "}
team modify m.Purple prefix {"text": "MissileMayhem | "}

# remove tag :)
tag @a[x=0] remove m.killed
tag @s remove m.ArrowDeath
tag @s remove m.ExplosionDeath
tag @s remove m.VoidDeath
tag @s remove dieMarked