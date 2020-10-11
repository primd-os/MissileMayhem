execute as @a[x=0] if score @s m.tpValue = @a[distance=..0.01,limit=1] m.tpaccValue run tp @s @a[distance=..0.001,limit=1]
tag @s remove Requested