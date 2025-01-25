# The function that initializes the tension loop
# Selec a random scenario
scoreboard players random TMP tmp_var 1 35
execute if score TMP tmp_var matches 1..20 run scoreboard players set JUMP_SCARE_SCENARIO tmp_var 0
execute if score TMP tmp_var matches 21..30 run scoreboard players set JUMP_SCARE_SCENARIO tmp_var 1
execute if score TMP tmp_var matches 31..35 run scoreboard players set JUMP_SCARE_SCENARIO tmp_var 2
# DEBUG for setting specific senerio:
# scoreboard players set JUMP_SCARE_SCENARIO tmp_var 2
execute if score JUMP_SCARE_SCENARIO tmp_var matches 0 run function jump_scare_trigger/tension_loop/enter/scenario_0
execute if score JUMP_SCARE_SCENARIO tmp_var matches 1 run function jump_scare_trigger/tension_loop/enter/scenario_1
execute if score JUMP_SCARE_SCENARIO tmp_var matches 2 run function jump_scare_trigger/tension_loop/enter/scenario_2
execute if score JUMP_SCARE_SCENARIO_OVERRIDE tmp_var matches 0.. run function jump_scare_trigger/tension_loop/enter/scenario_overwrite