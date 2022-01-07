playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
execute if score @s m.MapVote matches ..-1 run tellraw @s {"text":"Invalid map id.","color": "red"}
execute if score @s m.MapVote matches 7.. run tellraw @s {"text":"Invalid map id.","color": "red"}
execute if score @s m.MapVote matches ..-1 run scoreboard players operation @s m.MapVote = @s m.PrevMapVote
execute if score @s m.MapVote matches 7.. run scoreboard players operation @s m.MapVote = @s m.PrevMapVote
execute if score @s m.MapVote matches 0 run tellraw @s {"text":"Voting for Map: Normal"}
execute if score @s m.MapVote matches 1 run tellraw @s {"text":"Voting for Map: Small"}
execute if score @s m.MapVote matches 2 run tellraw @s {"text":"Voting for Map: Center Wall"}
execute if score @s m.MapVote matches 3 run tellraw @s {"text":"Voting for Map: Platforms"}
execute if score @s m.MapVote matches 4 run tellraw @s {"text":"Voting for Map: Weak Center"}
execute if score @s m.MapVote matches 5 run tellraw @s {"text":"Voting for Map: Diagonal"}
execute if score @s m.MapVote matches 6 run tellraw @s {"text":"Voting for Map: Towers"}
scoreboard players operation @s m.PrevMapVote = @s m.MapVote