execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 55 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_55
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 40 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_40
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 30 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_30
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 18 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_18
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 14 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_14
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 10 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_10
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 8 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_8
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 4 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_4
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches 1 run function jump_scare_trigger/tension_loop/tick/scenario_1/t_1
# When the coundonw reaches 0 go to the next state
execute if score JUMP_SCARE_TRIGGER_TICK tmp_var matches ..0 run function jump_scare_trigger/jump_scare/skip