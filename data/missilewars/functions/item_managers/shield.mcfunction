execute as @e[x=0,type=minecraft:snowball] run scoreboard players add @s snowballTime 1
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=1}] store result score @s UUID1 run data get entity @s Owner[0] 1
execute if entity @e[x=0,type=minecraft:snowball,scores={snowballTime=1}] as @a run function missilewars:item_managers/tag_shield
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=1}] run tag @s add Shield
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=Shield] at @s unless entity @e[tag=PracticeArea,x=0] if predicate missilewars:shield_inbounds unless score @s DirecToPlace matches 1 unless score @s DirecToPlace matches 3 run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=Shield] at @s unless entity @e[tag=PracticeArea,x=0] if predicate missilewars:shield_inbounds unless score @s DirecToPlace matches 0 unless score @s DirecToPlace matches 2 run setblock ~ ~ ~ structure_block{posX:0, posY:-3, posZ:-3, mode:"LOAD"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=Shield] at @s positioned ~-54 ~-100 ~-54 if entity @e[tag=PracticeArea,dx=108,dy=200,dz=108] positioned ~54 ~100 ~54 unless score @s DirecToPlace matches 1 unless score @s DirecToPlace matches 3 run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=Shield] at @s positioned ~-54 ~-100 ~-54 if entity @e[tag=PracticeArea,dx=108,dy=200,dz=108] positioned ~54 ~100 ~54 unless score @s DirecToPlace matches 0 unless score @s DirecToPlace matches 2 run setblock ~ ~ ~ structure_block{posX:0, posY:-3, posZ:-3, mode:"LOAD"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=GreenShield] at @s run data merge block ~ ~ ~ {name:"missilewars:shields/green"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=BlueShield] at @s run data merge block ~ ~ ~ {name:"missilewars:shields/blue"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=RedShield] at @s run data merge block ~ ~ ~ {name:"missilewars:shields/red"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}, tag=BlackShield] at @s run data merge block ~ ~ ~ {name:"missilewars:shields/black"}
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}] at @s if block ~ ~ ~ structure_block run kill @e[tag=UUIDHolder,x=0]
execute as @e[x=0,type=minecraft:snowball,scores={snowballTime=20}] at @s if block ~ ~ ~ structure_block run setblock ~ ~1 ~ redstone_block
kill @e[x=0,type=minecraft:snowball,scores={snowballTime=20}]