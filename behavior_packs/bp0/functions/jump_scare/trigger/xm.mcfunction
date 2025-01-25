summon shapescape:jump_scare_breaker ~-2 ~ ~0
tp @s ~ ~ ~ 90 -25
playsound jump_scare.jump_scare @s ~ ~ ~ 1 1
event entity @s jump_scare_damage
camerashake add @s 1 0.5 positional
effect @s slowness 1 2 true
summon shapescape:jump_scare_ride ~ ~ ~
execute as @e[type=shapescape:jump_scare_ride,c=1,r=1] at @s run function jump_scare/trigger/xm/add_rider
summon shapescape:jump_scare ~ ~ ~ xp
tp @e[type=shapescape:jump_scare,c=1] ~-7.2 ~ ~0.0 90