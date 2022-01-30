function missilewars:game_modes/ffa/create_bases

execute unless entity @e[x=0,type=marker,tag=hub.border] run summon marker 0 1000 0 {Tags:["hub.border"]}
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 18000
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 18000000