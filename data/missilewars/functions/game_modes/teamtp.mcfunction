execute as @s[team=m.Blue] run function missilewars:start/tp/blue
execute as @s[team=m.Green] run function missilewars:start/tp/green
execute as @s[team=m.Red] run function missilewars:start/tp/red
execute as @s[team=m.Purple] run function missilewars:start/tp/purple
execute as @s[team=m.FFA] run function missilewars:start/tp/ffa
execute as @s[team=m.Spectator] run tp 0 100 0
execute as @s[team=m.Lobby] run tp 0 100 0
# Reset Momentum
tp @s @s