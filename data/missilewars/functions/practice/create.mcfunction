kill @e[tag=PracticeArea,x=0]
forceload add 1000 0

forceload add -200 -200
forceload add -200 0
forceload add -200 200
forceload add 0 -200
forceload add 0 0
forceload add 0 200
forceload add 200 -200
forceload add 200 0
forceload add 200 200
summon minecraft:area_effect_cloud -200 50 -200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud -200 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud -200 50 200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 0 50 -200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 0 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 0 50 200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 200 50 -200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 200 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}
summon minecraft:area_effect_cloud 200 50 200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PracticeArea"]}

execute as @e[x=0,tag=PracticeArea] at @s run function missilewars:practice/area