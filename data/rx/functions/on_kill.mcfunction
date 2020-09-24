 # rx97

scoreboard players operation @s rx.kill_uid = $curr rx.kill_uid
scoreboard players add $curr rx.kill_uid 1

advancement revoke @s only rx:on_kill
