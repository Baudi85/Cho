# Temporary variables
scoreboard objectives add tmp dummy
scoreboard objectives add tmp1 dummy
scoreboard objectives add tmp2 dummy
scoreboard objectives add tmp3 dummy
scoreboard objectives add tmp4 dummy
scoreboard objectives add tmp5 dummy
scoreboard objectives add tmp6 dummy
scoreboard objectives add tmp7 dummy
scoreboard objectives add tmp8 dummy
scoreboard objectives add tmp9 dummy
scoreboard objectives add tmp10 dummy
# The scoreboard for the fake players
scoreboard objectives add var dummy
# The scoreboard for temporary variables stored in the fake players
scoreboard objectives add tmp_var dummy
# The scoreboard for numbers
scoreboard objectives add const dummy
scoreboard players set _-1 const -1
scoreboard players set _0 const 0
scoreboard players set _1 const 1
scoreboard players set _2 const 2
scoreboard players set _3 const 3
scoreboard players set _4 const 4
scoreboard players set _5 const 5
scoreboard players set _6 const 6
scoreboard players set _7 const 7
scoreboard players set _8 const 8
scoreboard players set _9 const 9
scoreboard players set _10 const 10
# Resetting states
function main/trs_lobby
# Set up the tutorial area
function tutorial/setup
# Summmon the jump scare entity and reset the tickinareas
tickingarea add circle 132 -17 -308 1 jump_scare_trigger_entity true
execute positioned 136 -6 -312 run function init/summon_state_entity
# Teleport the players to the lobby
execute as @a run function warp/key_location/lobby