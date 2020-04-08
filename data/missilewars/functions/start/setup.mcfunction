gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doDaylightCycle false
time set noon
gamerule keepInventory true
difficulty peaceful
setworldspawn 0 100 0

scoreboard objectives add snowballTime dummy

scoreboard objectives add missiles dummy
scoreboard objectives setdisplay sidebar missiles
scoreboard objectives modify missiles displayname "Upcoming Missiles"

scoreboard objectives add Constants dummy
scoreboard objectives add Start trigger

scoreboard players set NumMissiles Constants 8
scoreboard players set Map Constants 0
scoreboard players set Running Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Blue Constants 0
scoreboard players set Ending Constants 0

team add Blue
team add Green
team modify Blue color blue
team modify Green color green
team modify Blue collisionRule pushOtherTeams
team modify Green collisionRule pushOtherTeams
team modify Blue friendlyFire false
team modify Green friendlyFire false