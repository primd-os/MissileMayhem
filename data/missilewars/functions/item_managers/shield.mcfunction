execute as @e[type=minecraft:snowball] run scoreboard players add @s snowballTime 1
execute at @a[team=Blue] run tag @e[type=minecraft:snowball,scores={snowballTime=0..3}, distance=0..2] add BlueShield
execute at @a[team=Green] run tag @e[type=minecraft:snowball,scores={snowballTime=0..3}, distance=0..2] add GreenShield
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=GreenShield] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD", name:"missilewars:shields/green"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=BlueShield] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD", name:"missilewars:shields/blue"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}] at @s run setblock ~ ~1 ~ redstone_block
kill @e[type=minecraft:snowball,scores={snowballTime=20}]