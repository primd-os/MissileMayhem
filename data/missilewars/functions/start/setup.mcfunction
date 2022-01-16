scoreboard objectives add m.snowballTime dummy
scoreboard objectives add m.dropItem minecraft.custom:drop
scoreboard objectives add m.inv_change dummy

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
scoreboard objectives add JoinPurple trigger
scoreboard objectives add Practice trigger
scoreboard objectives add ClearPractice trigger
scoreboard objectives add Heal trigger
scoreboard objectives add Leave trigger

scoreboard objectives add ChooseMap trigger
scoreboard objectives add m.PrevMapVote dummy
scoreboard objectives add m.MapVote dummy

scoreboard objectives add GiveBook trigger

scoreboard objectives add m.PrevMissileSet dummy
scoreboard objectives add m.MissileSet dummy
scoreboard objectives add ChooseMissileSet trigger
scoreboard objectives add CreateGame trigger
scoreboard objectives add m.GameCreationStage dummy
scoreboard objectives add m.FutureGameMode dummy

scoreboard objectives add m.Items dummy
scoreboard objectives add m.Game dummy
scoreboard objectives add m.GameState dummy
scoreboard objectives add m.Timer dummy
scoreboard objectives add m.EndTimer dummy
scoreboard objectives add m.TimerSecs dummy
scoreboard objectives add m.TimerTick dummy

scoreboard objectives add m.DeathsInGame deathCount

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
scoreboard objectives add m.PrePurpleLoss dummy
scoreboard objectives add m.GreenLoss dummy
scoreboard objectives add m.BlueLoss dummy
scoreboard objectives add m.RedLoss dummy
scoreboard objectives add m.PurpleLoss dummy
scoreboard objectives add m.DeadTeams dummy

scoreboard objectives add m.PreGreenWin dummy
scoreboard objectives add m.PreBlueWin dummy
scoreboard objectives add m.PrePurpleWin dummy
scoreboard objectives add m.PreRedWin dummy
scoreboard objectives add m.GreenWin dummy
scoreboard objectives add m.BlueWin dummy
scoreboard objectives add m.PurpleWin dummy
scoreboard objectives add m.RedWin dummy
scoreboard objectives add m.BlueMembers dummy
scoreboard objectives add m.GreenMembers dummy
scoreboard objectives add m.RedMembers dummy
scoreboard objectives add m.PurpleMembers dummy

scoreboard objectives add m.BlueScore dummy
scoreboard objectives add m.GreenScore dummy
scoreboard objectives add m.RedScore dummy
scoreboard objectives add m.PurpleScore dummy

scoreboard objectives add m.RespawnTimer dummy
scoreboard objectives add m.RespawnTimeSec dummy

scoreboard objectives add m.GameClock dummy

scoreboard players set WinningScore m.Constants 2000
scoreboard players set Flip m.Constants -1
scoreboard players set Flatness m.Constants 1000

scoreboard players set TntLimit m.Constants 12
scoreboard players set PointScale m.Constants 100
scoreboard players set TPS m.Constants 20
scoreboard players set CSPT m.Constants 5
scoreboard players set SPM m.Constants 60

scoreboard players set Timer m.Constants 400
scoreboard players set EndTime m.Constants 200

scoreboard players set respawnTime m.Constants 100
scoreboard players set signLength m.Constants 4

scoreboard players set TomahawkQueue m.Variables -1
scoreboard players set JuggernautQueue m.Variables -1
scoreboard players set LightningQueue m.Variables -1
scoreboard players set ShieldbusterQueue m.Variables -1
scoreboard players set CustomQueue m.Variables -1
scoreboard players set ShieldQueue m.Variables -1
scoreboard players set ArrowsQueue m.Variables -1
scoreboard players set FireballQueue m.Variables -1

scoreboard objectives add m.deathCheck deathCount

scoreboard objectives add m.bowCount dummy

scoreboard objectives add m.clearZ dummy

scoreboard objectives add m.player_health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName m.player_health

team add Blue
team add Green
team add Red
team add Purple
team add Spectator
team add Lobby
team add Sumo
team modify Blue color blue
team modify Green color green
team modify Red color red
team modify Purple color dark_purple
team modify Spectator color dark_gray
team modify Lobby color gray
team modify Sumo color gray
team modify Blue collisionRule pushOwnTeam
team modify Green collisionRule pushOwnTeam
team modify Red collisionRule pushOwnTeam
team modify Purple collisionRule pushOwnTeam
team modify Lobby collisionRule never
team modify Sumo collisionRule always
team modify Blue friendlyFire false
team modify Green friendlyFire false
team modify Red friendlyFire false
team modify Purple friendlyFire false
team modify Lobby friendlyFire false
team modify Sumo friendlyFire true
team modify Blue prefix {"text": "MissileMayhem | "}
team modify Green prefix {"text": "MissileMayhem | "}
team modify Red prefix {"text": "MissileMayhem | "}
team modify Purple prefix {"text": "MissileMayhem | "}
team modify Spectator prefix {"text": "MissileMayhem | "}
team modify Lobby prefix {"text": "MissileMayhem | "}
team modify Sumo prefix {"text": "MissileMayhem | "}

scoreboard players set missile_time m.Variables 0
bossbar add missile_time {"text": ""}
bossbar set missile_time max 240
bossbar set missile_time style progress
bossbar set missile_time visible true

tag @a remove Editor
tag @a remove InBox

scoreboard players set @a m.Game -2

execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game1 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game2 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game3 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game4 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game5 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game6 run function missilewars:start/barriers
execute unless score lowLagReload m.Constants matches 1 in missilewars:games/game7 run function missilewars:start/barriers

execute unless score lowLagReload m.Constants matches 1 in missilewars:lobby run function missilewars:set_lobby/set_map

scoreboard players set lowLagReload m.Constants 1

data modify storage missilewars:queue queue set value ["","",""]

execute in missilewars:lobby run kill @e[type=item,x=0]