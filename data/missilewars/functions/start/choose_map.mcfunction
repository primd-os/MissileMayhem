tellraw @s {"text":"Maps:"}
tellraw @s {"text":"    1. Normal","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 0"}}
tellraw @s {"text":"    2. No Walls","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 1"}}
tellraw @s {"text":"    3. Small","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 2"}}
tellraw @s {"text":"    4. Center Wall","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 3"}}
tellraw @s {"text":"    5. Platforms","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 4"}}
tellraw @s {"text":"    6. Weak Center","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 5"}}
tellraw @s {"text":"    7. Bridge","clickEvent":{"action":"run_command","value":"/data modify block -4 100 0 Page set value 6"}}