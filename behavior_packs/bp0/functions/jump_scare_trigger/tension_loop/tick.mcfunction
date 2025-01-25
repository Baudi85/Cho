# The function that ticks the tension loop of the jump scare trigger
# every second in the tension building state.
scoreboard players remove JUMP_SCARE_TRIGGER_TICK tmp_var 1
# Handle specific scenarios
execute if score JUMP_SCARE_SCENARIO tmp_var matches 0 run function jump_scare_trigger/tension_loop/tick/scenario_0
execute if score JUMP_SCARE_SCENARIO tmp_var matches 1 run function jump_scare_trigger/tension_loop/tick/scenario_1
execute if score JUMP_SCARE_SCENARIO tmp_var matches 2 run function jump_scare_trigger/tension_loop/tick/scenario_2