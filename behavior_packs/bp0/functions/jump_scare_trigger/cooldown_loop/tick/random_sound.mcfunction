execute as @a at @s run playsound jump_scare_trigger.random_sound @a[tag=jump_scare_trigger_dark] ~ ~ ~ 1 1 0
# A few mintes break between the spooky sounds
scoreboard players random JUMP_SCARE_SOUND_COUNTDOWN tmp_var 30 150