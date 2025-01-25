# Tests for the right conditions to execute the jump scare state on a player.
# The players must be in the overworld. The players that are in the dark area
# are prioritized but standing in the light does not prevent the jump scare.
# OUTPUTS:
# - "@a tmp" - 1 if the player is in overworld, 2 if is also in the dark
#   area, 0 otherwise
# - "JUMP_SCARE_TARGETS tmp_var" - the number of the players that are valid
#   jump scare targets (tmp=1 or tmp=2)
scoreboard players set JUMP_SCARE_TARGETS tmp_var 0
# Mark all players as invalid targets
scoreboard players set @a tmp 0
# Set players in the dark in the overworld as valid targets and count them
execute in overworld as @a[rm=0] run function jump_scare_trigger/jump_scare_execute_test/valid