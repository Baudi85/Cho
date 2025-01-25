# The function that ticks the jump scare cooldown every second in the
# cooldown state.
scoreboard players remove JUMP_SCARE_TRIGGER_TICK tmp_var 1
# Prevent form ticking to 0 when there is no valid jump scare targets
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches ..0 run function jump_scare_trigger/cooldown_loop/tick/target_check
# The JUMP_SCARE_SOUND_COUNTDOWN is used to avoid randomly playing the sounds
# too often. The playsound command is only executed when the value is 0 or lower.
scoreboard players remove JUMP_SCARE_SOUND_COUNTDOWN tmp_var 1
# A few seconds before the random creepy sound fade out the music
execute if score JUMP_SCARE_SOUND_COUNTDOWN tmp_var matches 14 run function jump_scare_trigger/cooldown_loop/tick/spooky_sound_check
# Select a random creepy sound
execute if score JUMP_SCARE_SOUND_COUNTDOWN tmp_var matches ..0 run function jump_scare_trigger/cooldown_loop/tick/random_sound
# When the coundonw reaches 0 go to the next state
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches ..0 run event entity @s jump_scare_trigger_state_build_tension