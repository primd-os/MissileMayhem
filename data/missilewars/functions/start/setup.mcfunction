gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule announceAdvancements false

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
scoreboard objectives setdisplay sidebar missiles
scoreboard objectives modify missiles displayname "Upcoming Missiles"

scoreboard objectives add wins dummy
scoreboard objectives modify wins displayname "Wins"

scoreboard objectives add Constants dummy
scoreboard objectives add Start trigger
scoreboard objectives add StopAdverts trigger

scoreboard players set NumMissiles Constants 8
scoreboard players set Map Constants 0
scoreboard players set PrevMap Constants 0
scoreboard players set Running Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Blue Constants 0
scoreboard players set Ending Constants 0

scoreboard players set Length Constants 18
scoreboard players set ChestSize Constants 27
scoreboard players set Rows Constants 3
scoreboard players set Chests Constants 3
scoreboard players set Iterations Constants 162

scoreboard objectives add deathCheck deathCount

scoreboard objectives add shulkerCount dummy
scoreboard objectives add bowCount dummy

scoreboard objectives add clearX dummy
scoreboard objectives add clearY dummy
scoreboard objectives add clearZ dummy

team add Blue
team add Green
team add Spectator
team modify Blue color blue
team modify Green color green
team modify Spectator color dark_gray
team modify Blue collisionRule pushOtherTeams
team modify Green collisionRule pushOtherTeams
team modify Blue friendlyFire false
team modify Green friendlyFire false

function missilewars:start/advert

function missilewars:end/finish_game