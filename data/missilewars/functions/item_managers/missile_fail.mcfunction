playsound minecraft:block.note_block.guitar block @a[scores={PlacedMissile=1},sort=nearest,limit=1] ~ ~ ~ 1 0
execute as @s[name="Tomohawk"] as @a[scores={PlacedTomohawk=1},sort=nearest,limit=1] run function missilewars:new_missile/give/tomohawk
execute as @s[name="Juggurnaut"] as @a[scores={PlacedJuggurnaut=1},sort=nearest,limit=1] run function missilewars:new_missile/give/juggurnaut
execute as @s[name="Lightning"] as @a[scores={PlacedLightning=1},sort=nearest,limit=1] run function missilewars:new_missile/give/lightning
execute as @s[name="Shieldbuster"] as @a[scores={PlacedBuster=1},sort=nearest,limit=1] run function missilewars:new_missile/give/shieldbuster
execute as @s[name="Custom"] as @a[scores={PlacedCustom=1},sort=nearest,limit=1] run function missilewars:new_missile/give/custom
kill @s