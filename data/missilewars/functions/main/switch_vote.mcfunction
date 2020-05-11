playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
execute if score @s MapVote matches 0 run tellraw @s {"text":"Voting for Map: Normal"}
execute if score @s MapVote matches 1 run tellraw @s {"text":"Voting for Map: No Walls"}
execute if score @s MapVote matches 2 run tellraw @s {"text":"Voting for Map: Small"}
execute if score @s MapVote matches 3 run tellraw @s {"text":"Voting for Map: Center Wall"}
execute if score @s MapVote matches 4 run tellraw @s {"text":"Voting for Map: Platforms"}
execute if score @s MapVote matches 5 run tellraw @s {"text":"Voting for Map: Weak Center"}
execute if score @s MapVote matches 6 run tellraw @s {"text":"Voting for Map: Bridge"}
execute if score @s MapVote matches 7 run tellraw @s {"text":"Voting for Map: Diagonal"}
scoreboard players operation @s PrevMapVote = @s MapVote