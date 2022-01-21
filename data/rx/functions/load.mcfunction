# rx97

scoreboard objectives add rx.temp dummy

scoreboard objectives add rx.death_uid dummy
scoreboard objectives add rx.kill_uid dummy
scoreboard objectives add rx.atk_uid dummy
scoreboard objectives add rx.def_uid dummy

scoreboard players add $curr rx.death_uid 0
scoreboard players add $curr rx.kill_uid 0
scoreboard players add $curr rx.atk_uid 0
scoreboard players add $curr rx.def_uid 0
schedule function rx:tick 1t replace
