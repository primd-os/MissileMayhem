gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule announceAdvancements false
gamerule sendCommandFeedback false

time set noon
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

difficulty easy
gamerule doMobSpawning false
gamerule doEntityDrops false

setworldspawn 0 100 0

forceload add -100 -200 0 200
forceload add 0 -200 100 200

scoreboard objectives add snowballTime dummy

scoreboard objectives add missiles dummy
scoreboard objectives modify missiles displayname "Upcoming Missiles"

scoreboard objectives add points dummy
scoreboard objectives modify points displayname "Points"

scoreboard objectives add Constants dummy
scoreboard objectives add Start trigger
scoreboard objectives add StartVote dummy
scoreboard objectives setdisplay list StartVote
scoreboard objectives add StopAdverts trigger
scoreboard objectives add AutoTeam trigger
scoreboard objectives add JoinSpectators trigger
scoreboard objectives add JoinGreen trigger
scoreboard objectives add JoinBlue trigger
scoreboard objectives add ChooseMap trigger
scoreboard objectives add PrevMapVote trigger
scoreboard objectives add MapVote trigger
scoreboard objectives add GiveBook trigger
scoreboard objectives add PrevMissileSet dummy
scoreboard objectives add MissileSet dummy
scoreboard objectives add ChooseMissileSet trigger
scoreboard objectives add ChooseMissileSe2 trigger
scoreboard objectives add MissileSetSelect trigger
scoreboard objectives add Items dummy
scoreboard objectives add Game dummy
scoreboard objectives add GameState dummy
scoreboard objectives add Timer dummy
scoreboard objectives add TimerSecs dummy
scoreboard objectives add TimerTick dummy

scoreboard objectives add PlacedTomohawk minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add PlacedJuggurnaut minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add PlacedLightning minecraft.used:minecraft.ocelot_spawn_egg
scoreboard objectives add PlacedBuster minecraft.used:minecraft.witch_spawn_egg
scoreboard objectives add PlacedCustom minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add PlacedMissile minecraft.used:minecraft.cave_spider_spawn_egg

scoreboard objectives add DamageDealt minecraft.custom:damage_dealt
scoreboard objectives add DirectionPlace dummy
scoreboard objectives add DirecToPlace dummy
scoreboard objectives add Temp dummy

scoreboard players set NumMissiles Constants 8
scoreboard players set GreenWin Constants 0
scoreboard players set BlueWin Constants 0
scoreboard players set StartVotes Constants 0
scoreboard players set NumPlayers Constants 0
scoreboard players set @a StartVote 0
scoreboard players set BlueMembers Constants 0
scoreboard players set GreenMembers Constants 0

scoreboard players set Two Constants 2
scoreboard players set Ten Constants 10
scoreboard players set Twenty Constants 20

scoreboard players set Length Constants 18
scoreboard players set ChestSize Constants 27
scoreboard players set Rows Constants 3
scoreboard players set Chests Constants 3
scoreboard players set Iterations Constants 162

scoreboard objectives add deathCheck deathCount
scoreboard objectives add quits custom:leave_game

scoreboard objectives add shulkerCount dummy
scoreboard objectives add bowCount dummy

scoreboard objectives add clearX dummy
scoreboard objectives add clearY dummy
scoreboard objectives add clearZ dummy

scoreboard objectives add player_health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName player_health

team add Blue
team add Green
team add Spectator
team add Lobby
team modify Blue color blue
team modify Green color green
team modify Spectator color dark_gray
team modify Lobby color gray
team modify Blue collisionRule pushOtherTeams
team modify Green collisionRule pushOtherTeams
team modify Lobby collisionRule never
team modify Blue friendlyFire false
team modify Green friendlyFire false
team modify Lobby friendlyFire false

scoreboard objectives setdisplay sidebar.team.blue missiles
scoreboard objectives setdisplay sidebar.team.green missiles
scoreboard objectives setdisplay sidebar.team.dark_gray missiles
scoreboard objectives setdisplay sidebar.team.gray points

function missilewars:start/advert
function missilewars:new_missile/missile_loop

bossbar add missile_time {"text": "Time to Next Missile"}
bossbar set missile_time max 280
bossbar set missile_time style progress

function missilewars:end/finish_game

execute in overworld as @e[limit=1] run fill -105 0 -105 105 128 -105 barrier
execute in overworld as @e[limit=1] run fill 105 0 -105 105 128 105 barrier
execute in overworld as @e[limit=1] run fill 105 0 105 -105 128 105 barrier
execute in overworld as @e[limit=1] run fill -105 0 105 -105 128 -105 barrier

execute in overworld as @e[limit=1] run fill -105 128 -105 105 128 0 barrier
execute in overworld as @e[limit=1] run fill -105 128 0 105 128 105 barrier

execute in the_nether run function missilewars:set_lobby/set_map
execute in the_nether as @a run tp 0 100 0