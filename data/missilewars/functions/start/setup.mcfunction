gamerule fallDamage false
gamerule drowningDamage false
gamerule showDeathMessages false

time set noon
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

difficulty easy

scoreboard objectives add m.snowballTime dummy
scoreboard objectives add m.dropItem minecraft.custom:drop
scoreboard objectives add m.inv_change dummy

scoreboard objectives add m.Tomahawk dummy
scoreboard objectives add m.Juggernaut dummy
scoreboard objectives add m.Lightning dummy
scoreboard objectives add m.Shieldbuster dummy
scoreboard objectives add m.Custom dummy
scoreboard objectives add m.Shield dummy
scoreboard objectives add m.Fireball dummy
scoreboard objectives add m.Arrows dummy
scoreboard objectives add m.QueuePos dummy

scoreboard objectives add m.points dummy
scoreboard objectives modify m.points displayname "Rating"

scoreboard objectives add m.Constants dummy
scoreboard objectives add m.Variables dummy

scoreboard objectives add ToggleRanked trigger
scoreboard objectives add m.DoRanked dummy
scoreboard objectives add JoinSpectators trigger
scoreboard objectives add JoinGreen trigger
scoreboard objectives add JoinBlue trigger
scoreboard objectives add JoinRed trigger
scoreboard objectives add JoinBlack trigger
scoreboard objectives add Practice trigger
scoreboard objectives add ClearPractice trigger
scoreboard objectives add Leave trigger
scoreboard objectives add ChooseMap trigger
scoreboard objectives add PrevMapVote dummy
scoreboard objectives add MapVote trigger
scoreboard objectives add GiveBook trigger
scoreboard objectives add m.PrevMissileSet dummy
scoreboard objectives add m.MissileSet dummy
scoreboard objectives add ChooseMissileSet trigger
scoreboard objectives add MissileSetSelect trigger
scoreboard objectives add m.Items dummy
scoreboard objectives add m.Game dummy
scoreboard objectives setdisplay list m.Game
scoreboard objectives add m.GameState dummy
scoreboard objectives add m.Timer dummy
scoreboard objectives add m.EndTimer dummy
scoreboard objectives add m.HealthTimer dummy
scoreboard objectives add m.TimerSecs dummy
scoreboard objectives add m.TimerTick dummy
scoreboard objectives add TPA trigger
scoreboard objectives add m.tpValue dummy
scoreboard objectives add TPAccept trigger
scoreboard objectives add m.tpaccValue dummy

execute unless score maxTpValue m.Variables matches -2147483648..2147483647 run scoreboard players set maxTpValue m.Variables 1

scoreboard objectives add m.PlacedTomahawk minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add m.PlacedJugg minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add m.PlacedLight minecraft.used:minecraft.ocelot_spawn_egg
scoreboard objectives add m.PlacedBuster minecraft.used:minecraft.witch_spawn_egg
scoreboard objectives add m.PlacedCustom minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add m.PlacedMissile minecraft.used:minecraft.cave_spider_spawn_egg

scoreboard objectives add m.tntCount minecraft.used:tnt
scoreboard objectives add m.tntBroke minecraft.mined:tnt

scoreboard objectives add m.UUID1 dummy

scoreboard objectives add m.DamageDealt minecraft.custom:damage_dealt
scoreboard objectives add m.DirectionPlace dummy
scoreboard objectives add m.DirecToPlace dummy

scoreboard objectives add m.PreGreenLoss dummy
scoreboard objectives add m.PreBlueLoss dummy
scoreboard objectives add m.PreRedLoss dummy
scoreboard objectives add m.PreBlackLoss dummy
scoreboard objectives add m.GreenLoss dummy
scoreboard objectives add m.BlueLoss dummy
scoreboard objectives add m.RedLoss dummy
scoreboard objectives add m.BlackLoss dummy
scoreboard objectives add m.DeadTeams dummy

scoreboard objectives add m.PreGreenWin dummy
scoreboard objectives add m.PreBlueWin dummy
scoreboard objectives add m.PreBlackWin dummy
scoreboard objectives add m.PreRedWin dummy
scoreboard objectives add m.GreenWin dummy
scoreboard objectives add m.BlueWin dummy
scoreboard objectives add m.BlackWin dummy
scoreboard objectives add m.RedWin dummy
scoreboard objectives add m.BlueMembers dummy
scoreboard objectives add m.GreenMembers dummy
scoreboard objectives add m.RedMembers dummy
scoreboard objectives add m.BlackMembers dummy

scoreboard objectives add m.BlueScore dummy
scoreboard objectives add m.GreenScore dummy
scoreboard objectives add m.RedScore dummy
scoreboard objectives add m.BlackScore dummy

scoreboard objectives add m.RespawnTimer dummy
scoreboard objectives add m.RespawnTimeSec dummy

scoreboard objectives add m.GameClock dummy

scoreboard players set WinningScore m.Constants 3000
scoreboard players set Flip m.Constants -1
scoreboard players set Flatness m.Constants 1000

scoreboard players set TntLimit m.Constants 24
scoreboard players set PointScale m.Constants 100
scoreboard players set TPS m.Constants 20
scoreboard players set CSPT m.Constants 5
scoreboard players set SPM m.Constants 60

scoreboard players set Timer m.Constants 400
scoreboard players set EndTime m.Constants 200

scoreboard players set fallScale m.Constants 5

scoreboard objectives add m.shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add m.fallDistance dummy
scoreboard objectives add m.deathCheck deathCount

scoreboard objectives add m.bowCount dummy

scoreboard objectives add m.clearX dummy
scoreboard objectives add m.clearY dummy
scoreboard objectives add m.clearZ dummy

scoreboard objectives add m.player_health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName m.player_health

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
team modify Blue collisionRule pushOwnTeam
team modify Green collisionRule pushOwnTeam
team modify Red collisionRule pushOwnTeam
team modify Black collisionRule pushOwnTeam
team modify Lobby collisionRule never
team modify Sumo collisionRule always
team modify Blue friendlyFire false
team modify Green friendlyFire false
team modify Red friendlyFire false
team modify Black friendlyFire false
team modify Lobby friendlyFire false
team modify Sumo friendlyFire true
team modify Sumo prefix {"text": "[SUMO] "}
scoreboard objectives setdisplay sidebar.team.gray m.points

scoreboard players set missile_time m.Variables 0
bossbar add missile_time {"text": "Time to Next Missile"}
bossbar set missile_time max 240
bossbar set missile_time style progress

tag @a remove Editor
tag @a remove InBox

function missilewars:start/advert

scoreboard players set @a m.Game -2

execute unless score lowLagReload m.Constants matches 1 in missilewars:game1 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:game2 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:game3 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:game41 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:game42 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:game43 run function missilewars:start/barriers

execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game1 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game2 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game3 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game41 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game42 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game43 run function missilewars:start/barriers

execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game1 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game2 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game3 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game41 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game42 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game43 run function missilewars:start/barriers

execute unless score lowLagReload m.Constants matches 1 in missilewars:game1 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:game2 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:game3 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game1 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game2 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game3 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game1 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game2 run function missilewars:maps/queue/2team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game3 run function missilewars:maps/queue/2team

execute unless score lowLagReload m.Constants matches 1 in missilewars:game41 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:game42 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:game43 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game41 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game42 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:koth/game43 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game41 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game42 run function missilewars:maps/queue/4team
execute unless score lowLagReload m.Constants matches 1 in missilewars:ctf/game43 run function missilewars:maps/queue/4team

execute unless score lowLagReload m.Constants matches 1 in missilewars:lobby run function missilewars:set_lobby/set_map

execute unless score lowLagReload m.Constants matches 1 in missilewars:practice run function missilewars:practice/create

execute in missilewars:store run forceload add 0 0 0 -1
kill @e[type=item]