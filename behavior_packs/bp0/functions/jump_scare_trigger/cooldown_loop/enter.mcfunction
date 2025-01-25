# The function that initializes the cooldown loop
scoreboard players random JUMP_SCARE_TRIGGER_TICK tmp_var 200 350
# Allow to overwrite the initial cooldown using JUMP_SCARE_COOLDOWN_TICK_OVERWRITE
execute if score JUMP_SCARE_COOLDOWN_TICK_OVERWRITE tmp_var matches 1.. run function jump_scare_trigger/cooldown_loop/enter/cooldown_overwrite
# tellraw @a {"rawtext": [{"text":"DEBUG: The state timer is set to: "},{"score":{"name":"JUMP_SCARE_TRIGGER_TICK","objective":"tmp_var"}}]}