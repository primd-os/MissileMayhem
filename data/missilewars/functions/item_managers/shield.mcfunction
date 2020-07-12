execute as @e[type=minecraft:snowball] run scoreboard players add @s snowballTime 1
execute as @e[type=minecraft:snowball,scores={snowballTime=0..3}] at @s if entity @a[x=0,sort=nearest,limit=1,team=Blue] run tag @s add BlueShield
execute as @e[type=minecraft:snowball,scores={snowballTime=0..3}] at @s if entity @a[x=0,sort=nearest,limit=1,team=Green] run tag @s add GreenShield
execute as @e[type=minecraft:snowball,scores={snowballTime=0..3}] at @s if entity @a[x=0,sort=nearest,limit=1,team=Red] run tag @s add RedShield
execute as @e[type=minecraft:snowball,scores={snowballTime=0..3}] at @s if entity @a[x=0,sort=nearest,limit=1,team=Black] run tag @s add BlackShield
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=GreenShield] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD", name:"missilewars:shields/green"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=BlueShield] at @s run setblock ~ ~ ~ structure_block{rotation: "CLOCKWISE_90", posX:3, posY:-3, posZ:0, mode:"LOAD", name:"missilewars:shields/blue"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=RedShield] at @s run setblock ~ ~ ~ structure_block{posX:0, posY:-3, posZ:-3, mode:"LOAD", name:"missilewars:shields/red"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}, tag=BlackShield] at @s run setblock ~ ~ ~ structure_block{posX:0, posY:-3, posZ:-3, mode:"LOAD", name:"missilewars:shields/black"}
execute as @e[type=minecraft:snowball,scores={snowballTime=20}] at @s run setblock ~ ~1 ~ redstone_block
kill @e[type=minecraft:snowball,scores={snowballTime=20}]