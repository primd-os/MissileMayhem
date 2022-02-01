scoreboard players operation scoreDecimal m.Variables = @s m.FFAScore
scoreboard players operation scoreDecimal m.Variables %= hundred hub.Constants
team leave @s
execute if score scoreDecimal m.Variables matches 0 run tellraw @a[x=0] {"selector":"@s","color":"orange","extra":[" Score: ",{"score":{"name":"@s","objective":"m.FFAScore"}}]}
team join m.FFA @s