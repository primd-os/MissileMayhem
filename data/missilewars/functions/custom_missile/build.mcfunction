playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 0
tag @s add Editor
scoreboard players set @s m.inv_change 1
function missilewars:main/clear_inv