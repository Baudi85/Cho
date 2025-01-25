# Prevent form ticking down when there is no valid targets for a spooky sound
execute unless entity @a[tag=jump_scare_trigger_dark] run scoreboard players add JUMP_SCARE_SOUND_COUNTDOWN tmp_var 1
execute if entity @a[tag=jump_scare_trigger_dark] run music play jump_scare_trigger.silence_45s 1 6