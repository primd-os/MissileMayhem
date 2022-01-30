execute store result score GameId m.Variables run data get storage hub:hub navigation_book
scoreboard players add GameId m.Variables 1
data modify storage hub:hub navigation_book append value '["- ",{"text":"[","extra":[{"text":"Missile Mayhem","color":"dark_red"},"]"],"color":"dark_green"}]'