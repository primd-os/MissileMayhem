tellraw @s[scores={leave=-2147483648..2147483647}] [{"text":"/trigger leave "},{"text":"Leave the lobby you are in","color":"gray"}]
tellraw @s[scores={practice=-2147483648..2147483647}] [{"text":"/trigger practice "},{"text":"Go to practice","color":"gray"}]
tellraw @s[scores={ClearPractice=-2147483648..2147483647}] [{"text":"/trigger ClearPractice "},{"text":"Clear the practice area you are in","color":"gray"}]
tellraw @s[scores={heal=-2147483648..2147483647}] [{"text":"/trigger heal "},{"text":"Heal to full health","color":"gray"}]
tellraw @s[scores={m.Game=0..}] [{"text":"/trigger ChooseMap "},{"text":"Show a picker for map options","color":"gray"}]
tellraw @s[scores={m.Game=0..}] [{"text":"/trigger ChooseMissileSet "},{"text":"Show a picker for missile set options","color":"gray"}]
tellraw @s[scores={CreateGame=-2147483648..2147483647}] [{"text":"/trigger CreateGame "},{"text":"Create a game lobby","color":"gray"}]