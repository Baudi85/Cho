execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 45 run function jump_scare_trigger/tension_loop/tick/scenario_0/t_45
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 30 run function jump_scare_trigger/tension_loop/tick/scenario_0/t_30
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 20 run function jump_scare_trigger/tension_loop/tick/scenario_0/t_20
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 8 run function jump_scare_trigger/tension_loop/tick/scenario_0/t_8
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 3 run function jump_scare_trigger/tension_loop/tick/scenario_0/t_3
# When the coundonw reaches 0 go to the next state
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches ..0 run event entity @s jump_scare_trigger_state_jump_scare