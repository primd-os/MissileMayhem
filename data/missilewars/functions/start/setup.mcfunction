gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doDaylightCycle false
time set noon
gamerule keepInventory true
difficulty easy
setworldspawn 0 100 0

scoreboard objectives add snowballTime dummy

scoreboard objectives add missiles dummy
scoreboard objectives setdisplay sidebar missiles
scoreboard objectives modify missiles displayname "Upcoming Missiles"

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