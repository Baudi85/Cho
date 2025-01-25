summon shapescape:jump_scare_breaker ~0 ~ ~2
tp @s ~ ~ ~ 0 -25
playsound jump_scare.jump_scare @s ~ ~ ~ 1 1
event entity @s jump_scare_damage
camerashake add @s 1 0.5 positional
effect @s slowness 1 2 true
summon shapescape:jump_scare_ride ~ ~ ~
execute as @e[type=shapescape:jump_scare_ride,c=1,r=1] at @s run function jump_scare/trigger/zp/add_rider
summon shapescape:jump_scare ~ ~ ~ zm
tp @e[type=shapescape:jump_scare,c=1] ~0.0 ~ ~7.2 0