execute as @a[x=0] if score @s tpValue = @a[distance=..0.01,limit=1] tpaccValue run tp @s @a[distance=..0.001,limit=1]
tag @s remove Requested