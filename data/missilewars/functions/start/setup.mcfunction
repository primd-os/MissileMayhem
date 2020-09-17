gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule sendCommandFeedback false

time set noon
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

difficulty easy

execute in missilewars:lobby run setworldspawn 0 100 0

execute in missilewars:game1 run function missilewars:start/barriers
execute in missilewars:game2 run function missilewars:start/barriers
execute in missilewars:game3 run function missilewars:start/barriers
execute in missilewars:game41 run function missilewars:start/barriers
execute in missilewars:game42 run function missilewars:start/barriers
execute in missilewars:game43 run function missilewars:start/barriers

execute in missilewars:koth/game1 run function missilewars:start/barriers
execute in missilewars:koth/game2 run function missilewars:start/barriers
execute in missilewars:koth/game3 run function missilewars:start/barriers
execute in missilewars:koth/game41 run function missilewars:start/barriers
execute in missilewars:koth/game42 run function missilewars:start/barriers
execute in missilewars:koth/game43 run function missilewars:start/barriers

execute in missilewars:ctf/game1 run function missilewars:start/barriers
execute in missilewars:ctf/game2 run function missilewars:start/barriers
execute in missilewars:ctf/game3 run function missilewars:start/barriers
execute in missilewars:ctf/game41 run function missilewars:start/barriers
execute in missilewars:ctf/game42 run function missilewars:start/barriers
execute in missilewars:ctf/game43 run function missilewars:start/barriers

execute in missilewars:game1 run function missilewars:maps/queue/2team
execute in missilewars:game2 run function missilewars:maps/queue/2team
execute in missilewars:game3 run function missilewars:maps/queue/2team
execute in missilewars:koth/game1 run function missilewars:maps/queue/2team
execute in missilewars:koth/game2 run function missilewars:maps/queue/2team
execute in missilewars:koth/game3 run function missilewars:maps/queue/2team
execute in missilewars:ctf/game1 run function missilewars:maps/queue/2team
execute in missilewars:ctf/game2 run function missilewars:maps/queue/2team
execute in missilewars:ctf/game3 run function missilewars:maps/queue/2team

execute in missilewars:game41 run function missilewars:maps/queue/4team
execute in missilewars:game42 run function missilewars:maps/queue/4team
execute in missilewars:game43 run function missilewars:maps/queue/4team
execute in missilewars:koth/game41 run function missilewars:maps/queue/4team
execute in missilewars:koth/game42 run function missilewars:maps/queue/4team
execute in missilewars:koth/game43 run function missilewars:maps/queue/4team
execute in missilewars:ctf/game41 run function missilewars:maps/queue/4team
execute in missilewars:ctf/game42 run function missilewars:maps/queue/4team
execute in missilewars:ctf/game43 run function missilewars:maps/queue/4team

scoreboard objectives add snowballTime dummy

scoreboard objectives add Tomahawk dummy
scoreboard objectives add Juggernaut dummy
scoreboard objectives add Lightning dummy
scoreboard objectives add Shieldbuster dummy
scoreboard objectives add Custom dummy
scoreboard objectives add Shield dummy
scoreboard objectives add Fireball dummy
scoreboard objectives add Arrows dummy
scoreboard objectives add QueuePos dummy

scoreboard objectives add points dummy
scoreboard objectives modify points displayname "Points"

scoreboard objectives add Constants dummy
scoreboard objectives add Variables dummy

scoreboard objectives add StopAdverts trigger
scoreboard objectives add Adverts dummy
scoreboard objectives add ToggleRanked trigger
scoreboard objectives add DoRanked dummy
scoreboard objectives add JoinSpectators trigger
scoreboard objectives add JoinGreen trigger
scoreboard objectives add JoinBlue trigger
scoreboard objectives add JoinRed trigger
scoreboard objectives add JoinBlack trigger
scoreboard objectives add Practice trigger
scoreboard objectives add ClearPractice trigger
scoreboard objectives add Leave trigger
scoreboard objectives add ChooseMap trigger
scoreboard objectives add PrevMapVote trigger
scoreboard objectives add MapVote trigger
scoreboard objectives add GiveBook trigger
scoreboard objectives add PrevMissileSet dummy
scoreboard objectives add MissileSet dummy
scoreboard objectives add ChooseMissileSet trigger
scoreboard objectives add MissileSetSelect trigger
scoreboard objectives add Items dummy
scoreboard objectives add Game dummy
scoreboard objectives setdisplay list Game
scoreboard objectives add GameState dummy
scoreboard objectives add Timer dummy
scoreboard objectives add TimerSecs dummy
scoreboard objectives add TimerTick dummy
scoreboard objectives add TPA trigger
scoreboard objectives add tpValue dummy
scoreboard objectives add TPAccept trigger
scoreboard objectives add tpaccValue dummy

execute unless score maxTpValue Variables matches -2147483648..2147483647 run scoreboard players set maxTpValue Variables 1

scoreboard objectives add PlacedTomahawk minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add PlacedJuggernaut minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add PlacedLightning minecraft.used:minecraft.ocelot_spawn_egg
scoreboard objectives add PlacedBuster minecraft.used:minecraft.witch_spawn_egg
scoreboard objectives add PlacedCustom minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add PlacedMissile minecraft.used:minecraft.cave_spider_spawn_egg

scoreboard objectives add tntCount minecraft.used:tnt
scoreboard objectives add tntBroke minecraft.mined:tnt

scoreboard objectives add UUID1 dummy

scoreboard objectives add DamageDealt minecraft.custom:damage_dealt
scoreboard objectives add DirectionPlace dummy
scoreboard objectives add DirecToPlace dummy

scoreboard objectives add PreGreenLoss dummy
scoreboard objectives add PreBlueLoss dummy
scoreboard objectives add PreRedLoss dummy
scoreboard objectives add PreBlackLoss dummy
scoreboard objectives add GreenLoss dummy
scoreboard objectives add BlueLoss dummy
scoreboard objectives add RedLoss dummy
scoreboard objectives add BlackLoss dummy
scoreboard objectives add DeadTeams dummy

scoreboard objectives add PreGreenWin dummy
scoreboard objectives add PreBlueWin dummy
scoreboard objectives add PreBlackWin dummy
scoreboard objectives add PreRedWin dummy
scoreboard objectives add GreenWin dummy
scoreboard objectives add BlueWin dummy
scoreboard objectives add BlackWin dummy
scoreboard objectives add RedWin dummy
scoreboard objectives add BlueMembers dummy
scoreboard objectives add GreenMembers dummy
scoreboard objectives add RedMembers dummy
scoreboard objectives add BlackMembers dummy

scoreboard objectives add BlueScore dummy
scoreboard objectives add GreenScore dummy
scoreboard objectives add RedScore dummy
scoreboard objectives add BlackScore dummy

scoreboard objectives add GameClock dummy

scoreboard players set WinningScore Constants 1200
scoreboard players set Flip Constants -1
scoreboard players set Flatness Constants 1000

scoreboard players set TntLimit Constants 24
scoreboard players set PointScale Constants 100
scoreboard players set TPS Constants 20

scoreboard players set Timer Constants 400

scoreboard objectives add deathCheck deathCount
scoreboard objectives add quits custom:leave_game

scoreboard objectives add bowCount dummy

scoreboard objectives add clearX dummy
scoreboard objectives add clearY dummy
scoreboard objectives add clearZ dummy

scoreboard objectives add player_health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName player_health

team add Blue
team add Green
team add Red
team add Black
team add Spectator
team add Lobby
team add Sumo
team modify Blue color blue
team modify Green color green
team modify Red color red
team modify Black color black
team modify Spectator color dark_gray
team modify Lobby color gray
team modify Sumo color gray
team modify Blue collisionRule pushOtherTeams
team modify Green collisionRule pushOtherTeams
team modify Red collisionRule pushOtherTeams
team modify Black collisionRule pushOtherTeams
team modify Lobby collisionRule never
team modify Sumo collisionRule always
team modify Blue friendlyFire false
team modify Green friendlyFire false
team modify Red friendlyFire false
team modify Black friendlyFire false
team modify Lobby friendlyFire false
team modify Sumo friendlyFire true
team modify Sumo prefix {"text": "[SUMO] "}
scoreboard objectives setdisplay sidebar.team.gray points

scoreboard players set missile_time Variables 0
bossbar add missile_time {"text": "Time to Next Missile"}
bossbar set missile_time max 240
bossbar set missile_time style progress

tag @a remove Editor
tag @a remove InBox

function missilewars:start/advert

execute as @a at @s run function missilewars:end/finish_game

execute in missilewars:lobby run function missilewars:set_lobby/set_map
execute in missilewars:lobby as @a run tp 0 100 0

execute in missilewars:practice run function missilewars:practice/create

execute in missilewars:store run forceload add 0 0 0 -1
kill @e[type=item]