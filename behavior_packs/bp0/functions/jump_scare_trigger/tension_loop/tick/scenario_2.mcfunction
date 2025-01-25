execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 5 run function jump_scare_trigger/tension_loop/tick/scenario_2/t_5
# When the coundonw reaches 0 go to the next state
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches ..0 run event entity @s jump_scare_trigger_state_jump_scare