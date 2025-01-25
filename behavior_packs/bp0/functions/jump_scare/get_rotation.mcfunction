# Gets the rotation for the jump-scare, based on the blocks surrounding
# the player.
# OUTPUTS:
# - "ROTATION tmp_var" - the rotation of calling entity (0 - z+, 1 - x-, 2 - z-, 3 - x+)
# Defaut to z+
scoreboard players set ROTATION tmp_var 0
# x-
execute if block ~-1 ~ ~ air 0 run scoreboard players set ROTATION tmp_var 1
# z-
execute if block ~ ~ ~-1 air 0 run scoreboard players set ROTATION tmp_var 2
# x+
execute if block ~1 ~ ~ air 0 run scoreboard players set ROTATION tmp_var 3