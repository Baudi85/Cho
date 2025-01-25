# The main function that runs from tick.json
# The transitions between the states
# Tick State
execute if score states var matches 0 run function main/tick_state_lobby
execute if score states var matches 1 run function main/tick_state_tutorial_start
execute if score states var matches 2 run function main/tick_state_tutorial_room
execute if score states var matches 3 run function main/tick_state_survival
execute if score states var matches 4 run function main/tick_state_boss
execute if score states var matches 5 run function main/tick_state_end_game