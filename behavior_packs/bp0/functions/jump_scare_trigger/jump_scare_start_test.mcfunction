# Tests for the right conditions to start the jump scare state. There must be at least
# one player in overworld, standing in the dark.
# OUTPUTS:
# - "@a tmp" - 1 if the player is a valid jump scare target, 0 otherwise
# - "JUMP_SCARE_TARGETS tmp_var" - the number of the players that are valid jump scare targets
scoreboard players set JUMP_SCARE_TARGETS tmp_var 0
# Mark all players as invalid targets
scoreboard players set @a tmp 0
# Set players in the dark in the overworld as valid targets and count them
execute in overworld as @a[rm=0,tag=jump_scare_trigger_dark] run function jump_scare_trigger/jump_scare_start_test/valid