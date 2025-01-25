# Tutorial state -> TP to survival
execute if score states var matches 2 if entity @a[r=1] run function portal/look_for_player/tutorial_to_survival
# Survival state -> TP to arena
execute if score states var matches 3 if entity @a[r=1] run function portal/look_for_player/teleport_to_arena
# Boss state:
# player in arena -> TP to survival (end game no game state change)
execute if score states var matches 5 if entity @s[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] if entity @a[r=1] run function portal/look_for_player/teleport_to_end_game
# player in survival -> TP to arena
execute if score states var matches 5 unless entity @s[x=240.0,y=-7.0,z=-354.0,dx=-66,dy=34,dz=-140] if entity @a[r=1] run function portal/look_for_player/teleport_to_arena