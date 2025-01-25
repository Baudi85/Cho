scoreboard players set @s tmp 0
# Lobby
scoreboard players set @s[x=128.0,y=-16.0,z=-329.0,dx=8,dy=4,dz=13] tmp 1
# Tunnel
scoreboard players set @s[x=129.0,y=-14.0,z=-311.0,dx=7,dy=-4,dz=17] tmp 1
# Spider room
scoreboard players set @s[x=145.0,y=-57.0,z=-277.0,dx=-28,dy=9,dz=-23] tmp 1
execute if entity @s[scores={tmp=1}] run function main/tick_state_survival/tp_out_of_tutorial/apply
gamemode survival @a[m=adventure]