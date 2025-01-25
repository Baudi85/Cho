function jump_scare/get_rotation
execute if score ROTATION tmp_var matches 0 run function jump_scare/trigger/zp
execute if score ROTATION tmp_var matches 1 run function jump_scare/trigger/xm
execute if score ROTATION tmp_var matches 2 run function jump_scare/trigger/zm
execute if score ROTATION tmp_var matches 3 run function jump_scare/trigger/xp