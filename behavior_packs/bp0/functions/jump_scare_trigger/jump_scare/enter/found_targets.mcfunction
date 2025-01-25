execute if entity @a[scores={tmp=2}] run scoreboard players set @a[scores={tmp=1}] tmp 0
execute as @r[c=1,scores={tmp=1..}] at @s run function jump_scare/trigger
music play jump_scare_trigger.silence_45s 1 0
stopsound @a jump_scare_trigger.random_sound
execute as @a run function jump_scare_trigger/fog/clear
event entity @s jump_scare_trigger_state_cooldown