function jump_scare_trigger/jump_scare_start_test
execute if score JUMP_SCARE_TARGETS tmp_var matches 0 run scoreboard players set JUMP_SCARE_TRIGGER_TICK tmp_var 1