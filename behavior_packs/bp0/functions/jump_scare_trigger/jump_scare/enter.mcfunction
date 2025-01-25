# Calls the jump scare at a random player and clears the fog for everyone
function jump_scare_trigger/jump_scare_execute_test
execute if score JUMP_SCARE_TARGETS tmp_var matches 1 run function jump_scare_trigger/jump_scare/enter/found_targets
execute unless score JUMP_SCARE_TARGETS tmp_var matches 0 run function jump_scare_trigger/jump_scare/skip